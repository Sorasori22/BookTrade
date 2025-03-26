-- Trigger to create message thread when trade request is accepted
create or replace function public.create_message_thread_on_trade_request_accept()
returns trigger as $$
begin
    insert into public.messages (sender_id, recipient_id, content, trade_request_id)
    values (new.requester_id, new.owner_id, 'Hello, I would like to trade your book.', new.id);
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
