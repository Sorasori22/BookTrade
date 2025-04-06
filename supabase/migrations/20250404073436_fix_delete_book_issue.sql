-- cannot delete due to book_views table
-- add on delete cascade to book_views table
alter table public.book_views
drop constraint book_views_book_id_fkey;

alter table public.book_views
add constraint book_views_book_id_fkey
foreign key (book_id) references public.books(id) on delete cascade;