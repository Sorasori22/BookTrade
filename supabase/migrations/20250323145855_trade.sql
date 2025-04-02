alter publication supabase_realtime add table public.trade_requests;

-- Trigger to create message thread when trade request is accepted
create or replace function public.create_message_thread_on_trade_request_accept()
returns trigger as $$
begin
    insert into public.messages (sender_id, recipient_id, content, trade_request_id, type)
    values (new.requester_id, new.owner_id, 'Hello, I would like to trade your book.', new.id, 'requestStarted');
    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_message_thread_on_trade_request_accept on public.trade_requests;
create trigger create_message_thread_on_trade_request_accept
after update of status on public.trade_requests
for each row
when (new.status = 'accepted')
execute function public.create_message_thread_on_trade_request_accept();

-- Trigger to create completed swap when trade request is completed
create or replace function public.create_completed_swap_on_trade_request_complete()
returns trigger as $$
begin
    insert into public.completed_swaps (requester_id, owner_id, requester_book_id, owner_book_id, trade_request_id)
    values (new.requester_id, new.owner_id, new.book_id, new.offered_book_id, new.id);
    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_completed_swap_on_trade_request_complete on public.trade_requests;
create trigger create_completed_swap_on_trade_request_complete
after update of status on public.trade_requests
for each row
when (new.status = 'completed')
execute function public.create_completed_swap_on_trade_request_complete();


-- trigger on offered book in trade request table
create or replace function public.create_offered_book_message_on_trade_request_update()
returns trigger as $$
begin
    -- Delete old message if it is update
    if old.offered_book_id is not null then
        delete from public.messages where trade_request_id = new.id and type = 'offeredBook';
    end if;

    insert into public.messages (sender_id, recipient_id, content, trade_request_id, type)
    values (new.requester_id, new.owner_id, 'Here is the book I would like to trade with you. Please click "Accept Offer" if you agree to the trade or leave a message if you have any issues.', new.id, 'offeredBook');
    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_offered_book_message_on_trade_request_update on public.trade_requests;
create trigger create_offered_book_message_on_trade_request_update
after update of offered_book_id on public.trade_requests
for each row
execute function public.create_offered_book_message_on_trade_request_update();

-- Trigger to create trade confirmed message when trade request is completed
create or replace function public.create_trade_confirmed_message_on_trade_request_complete()
returns trigger as $$
begin
    insert into public.messages (sender_id, recipient_id, content, trade_request_id, type)
    values (new.requester_id, new.owner_id, '', new.id, 'tradeConfirmed');
    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_trade_confirmed_message_on_trade_request_complete on public.trade_requests;
create trigger create_trade_confirmed_message_on_trade_request_complete
after update of status on public.trade_requests
for each row
when (new.status = 'confirmed')
execute function public.create_trade_confirmed_message_on_trade_request_complete();


-- when trade request is completed
-- create completed swap record
-- Update book ownership

create or replace function public.create_completed_swap_on_trade_request_complete()
returns trigger as $$
    begin
        insert into public.completed_swaps (requester_id, owner_id, requester_book_id, owner_book_id, trade_request_id)
        values (new.requester_id, new.owner_id, new.book_id, new.offered_book_id, new.id);
        return new;
    end;
$$ language plpgsql security definer;

drop trigger if exists create_completed_swap_on_trade_request_complete on public.trade_requests;
create trigger create_completed_swap_on_trade_request_complete
after update of status on public.trade_requests
for each row
when (new.status = 'completed')
execute function public.create_completed_swap_on_trade_request_complete();

-- update book ownership 
create or replace function public.update_book_ownership_on_trade_request_complete()
returns trigger as $$
begin
    update public.books set owner_id = new.requester_id where id = new.book_id;
    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists update_book_ownership_on_trade_request_complete on public.trade_requests;
create trigger update_book_ownership_on_trade_request_complete
after update of status on public.trade_requests
for each row
when (new.status = 'completed')
execute function public.update_book_ownership_on_trade_request_complete();