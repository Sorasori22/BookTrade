create or replace function public.get_book_rating_overall(
    p_book_id bigint
)
returns jsonb as
$$
declare
    v_result jsonb;
    v_my_rating jsonb;
begin
    -- Get current user's rating if exists
    select 
        jsonb_build_object(
            'id', id,
            'rating', rating,
            'comment', comment,
            'created_at', created_at
        )
    into v_my_rating
    from public.book_ratings
    where book_id = p_book_id
    and user_id = (select auth.uid());

    -- Get overall rating statistics
    select 
        jsonb_build_object(
            'average', coalesce(avg(rating)::numeric(10,2), 0),
            'rating_1_count', coalesce(count(*) filter (where rating = 1), 0),
            'rating_2_count', coalesce(count(*) filter (where rating = 2), 0),
            'rating_3_count', coalesce(count(*) filter (where rating = 3), 0),
            'rating_4_count', coalesce(count(*) filter (where rating = 4), 0),
            'rating_5_count', coalesce(count(*) filter (where rating = 5), 0),
            'mine', v_my_rating
        )
    into v_result
    from public.book_ratings
    where book_id = p_book_id;

    return v_result;
end; 
$$ language plpgsql security definer;