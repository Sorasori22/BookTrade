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
        )
        where id = coalesce(new.book_id, old.book_id);
        return coalesce(new, old);
    end; 
$$ language plpgsql security definer;

drop trigger if exists update_book_average_rating on public.book_ratings;
create trigger update_book_average_rating
after insert or update or delete on public.book_ratings
for each row
execute function public.update_book_average_rating();