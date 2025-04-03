alter table public.books
add column if not exists view_count bigint default 0 not null;

alter table public.books
add column if not exists rating_count bigint default 0 not null;

-- trigger to update average rating of book
create or replace function public.update_book_average_rating()
returns trigger as
$$
    begin
        update public.books
        set average_rating = (
            select avg(rating)
            from public.book_ratings
            where book_id = coalesce(new.book_id, old.book_id)
        ),
        rating_count = (
            select count(1)
            from public.book_ratings
            where book_id = coalesce(new.book_id, old.book_id)
        )
        where id = coalesce(new.book_id, old.book_id);
        return coalesce(new, old);
    end; 
$$ language plpgsql security definer;


-- table to track daily view
create table if not exists public.book_views (
    id bigint generated always as identity primary key,
    book_id bigint not null references public.books(id),
    view_count bigint default 0 not null,
    date date not null default now(),
    unique (book_id, date)
);

-- trigger on book_views table, when view is updated we insert record to book_views table
create or replace function public.insert_book_view()
returns trigger as
$$
    begin
        insert into public.book_views (book_id, view_count, date)
        values (new.id, 1, current_date)
        on conflict (book_id, date) do update
        set view_count = book_views.view_count + 1;
        return new;
    end;
$$ language plpgsql security definer;

drop trigger if exists insert_book_view on public.books;
create trigger insert_book_view
after update of view_count on public.books
for each row
execute function public.insert_book_view();

alter table public.book_views enable row level security;
drop policy if exists "book_views: Select policy" on public.book_views;
drop policy if exists "book_views: Insert policy" on public.book_views;
drop policy if exists "book_views: Update policy" on public.book_views;
drop policy if exists "book_views: Delete policy" on public.book_views;
create policy "book_views: Select policy" on public.book_views for select to authenticated using(
    true
);
create policy "book_views: Insert policy" on public.book_views for insert to authenticated with check (
    true
);
create policy "book_views: Update policy" on public.book_views for update to authenticated using(
    true
) with check (
    true
);
create policy "book_views: Delete policy" on public.book_views for delete to authenticated using(
    true
);


create or replace function public.increment_book_view_count(
    p_book_id bigint
)
returns void as
$$
    begin
        update public.books
        set view_count = view_count + 1
        where id = p_book_id;
    end; 
$$ language plpgsql security definer;


-- function to get trending books based on daily view count
create or replace function public.get_trending_books()
returns setof public.books
language sql
volatile -- Marked volatile due to use of random() and current_date
security invoker
set search_path = ''
as $$
  with trending_books as (
    select b.*
    from public.books b
    join public.book_views bv on b.id = bv.book_id
    where bv.date = current_date
    order by bv.view_count desc, random()
    limit 30
  ),
  random_books as (
    select b.*
    from public.books b
    where not exists (
      select 1 from trending_books t where t.id = b.id
    )
    order by random()
    limit 30
  )
  select *
  from trending_books
  union all
  select *
  from random_books
  limit 30;
$$;


-- function to get popular books based on rating and views
create or replace function public.get_popular_books(
  p_limit int default 30
)
returns setof public.books
language sql
volatile -- Changed to volatile since we now use random()
security invoker
set search_path = ''
as $$
  with popular_books as (
    select b.*
    from public.books b
    where b.rating_count > 0  -- Only include books with at least one rating
    order by 
      -- Popularity score formula:
      -- (average_rating * ln(rating_count + 1)) * ln(view_count + 1)
      -- This gives weight to both rating quality and quantity, plus view count
      -- Natural log dampens the effect of very high counts
      (b.average_rating * ln(b.rating_count + 1)) * ln(b.view_count + 1) desc,
      b.id
    limit p_limit
  ),
  random_books as (
    select b.*
    from public.books b
    where not exists (
      select 1 from popular_books p where p.id = b.id
    )
    order by random()
    limit p_limit
  )
  select *
  from popular_books
  union all
  select *
  from random_books
  limit p_limit;
$$;


-- function to get similar books based on user's owned books
create or replace function public.get_similar_books(
  p_limit int default 30
)
returns setof public.books
language sql
volatile -- Marked volatile since we use random()
security invoker
set search_path = ''
as $$
  with user_books as (
    -- Get the books owned by the user
    select b.*
    from public.books b
    where b.owner_id = (select auth.uid())
  ),
  similar_book_ids as (
    -- Find similar books based on author and title matching
    select 
      b.id
    from (
      select 
        b.id,
        -- Calculate similarity score:
        -- 3 points for exact author match
        -- 1 point for each matching word in title
        (
          case when b.author = any(select author from user_books) then 3 else 0 end +
          (
            select coalesce(
              max(
                array_length(
                  array(
                    select unnest(string_to_array(lower(ub.title), ' '))
                    intersect
                    select unnest(string_to_array(lower(b.title), ' '))
                  ),
                  1
                )
              ),
              0
            )
            from user_books ub
          )
        )::float as similarity_score
      from public.books b
      where 
        -- Exclude books owned by the user
        b.owner_id != (select auth.uid())
        -- Only include books that have some similarity
        and (
          b.author = any(select author from user_books)
          or exists (
            select 1 
            from user_books ub
            where 
              array_length(
                array(
                  select unnest(string_to_array(lower(ub.title), ' '))
                  intersect
                  select unnest(string_to_array(lower(b.title), ' '))
                ),
                1
              ) > 0
          )
        )
    ) b
    order by 
      similarity_score desc,
      random()
    limit p_limit
  ),
  remaining_count as (
    -- Calculate how many more books we need
    select greatest(0, p_limit - (select count(*) from similar_book_ids)) as count
  ),
  random_book_ids as (
    -- Get random books if we don't have enough similar ones
    select id
    from public.books b
    where 
      -- Exclude books owned by the user
      b.owner_id != (select auth.uid())
      -- Exclude books already selected as similar
      and not exists (select 1 from similar_book_ids s where s.id = b.id)
    order by random()
    limit (select count from remaining_count)
  ),
  final_book_ids as (
    (select id from similar_book_ids)
    union all
    (select id from random_book_ids)
  )
  -- Final select to get all book details
  select b.*
  from public.books b
  where 
    b.id in (select id from final_book_ids)
    and b.owner_id != (select auth.uid()) -- Extra safety check
  order by 
    -- Preserve the order: similar books first, then random
    case when b.id in (select id from similar_book_ids) then 0 else 1 end,
    random()
  limit p_limit;
$$;


