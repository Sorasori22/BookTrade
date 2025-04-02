create or replace function public.create_notification(
    p_notification_type text,
    p_user_id uuid,
    p_title text,
    p_content text,
    p_payload jsonb
)
returns bigint as
$$
    declare
        v_notification_id bigint;
    begin
        insert into public.notifications (user_id, title, content, notification_type, payload)
        values (p_user_id, p_title, p_content, p_notification_type, p_payload)
        returning id into v_notification_id;

        return v_notification_id;
    end; 
$$ language plpgsql security definer;


-- Create notification when trade request is created
create or replace function public.create_trade_request_notification()
returns trigger as $$
declare
    v_book record;
    v_requester record;
begin
    select * from public.books where id = new.book_id into v_book;
    select * from public.profiles where id = new.requester_id into v_requester;

    perform public.create_notification(
        'trade_request',
        new.owner_id,
        v_book.title,
        format('You have a new trade request from %s', coalesce(v_requester.fullname, v_requester.username)),
        to_jsonb(new)
    );

    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_trade_request_notification on public.trade_requests;
create trigger create_trade_request_notification
after insert on public.trade_requests
for each row
execute function public.create_trade_request_notification();


-- Create notification when trade request is accepted
create or replace function public.create_trade_request_accepted_notification()
returns trigger as $$
declare
    v_book record;
begin
    select * from public.books where id = new.book_id into v_book;

    perform public.create_notification(
        'trade_request_accepted',
        new.requester_id,
        'Trade Request Accepted',
        'Your trade request has been accepted',
        to_jsonb(new)
    );

    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_trade_request_accepted_notification on public.trade_requests;
create trigger create_trade_request_accepted_notification
after update of status on public.trade_requests
for each row
when (new.status = 'accepted')
execute function public.create_trade_request_accepted_notification();


-- Create notification when trade request is rejected
create or replace function public.create_trade_request_rejected_notification()
returns trigger as $$
declare
    v_book record;
begin
    select * from public.books where id = new.book_id into v_book;

    perform public.create_notification(
        'trade_request_rejected',
        new.requester_id,
        'Trade Request Rejected',
        'Your trade request has been rejected',
        to_jsonb(new)
    );

    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_trade_request_rejected_notification on public.trade_requests;
create trigger create_trade_request_rejected_notification
after update of status on public.trade_requests
for each row
when (new.status = 'rejected')
execute function public.create_trade_request_rejected_notification();

--- Create notification when trade request is confirmed
create or replace function public.create_trade_request_confirmed_notification()
returns trigger as $$
declare
    v_book record;
begin
    select * from public.books where id = new.book_id into v_book;

    perform public.create_notification(
        'trade_request_confirmed',
        new.owner_id,
        'Trade Request Confirmed',
        'Your trade request has been confirmed',
        to_jsonb(new)
    );

    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_trade_request_confirmed_notification on public.trade_requests;
create trigger create_trade_request_confirmed_notification
after update of status on public.trade_requests
for each row
when (new.status = 'confirmed')
execute function public.create_trade_request_confirmed_notification();

-- Create notification when trade request is completed
create or replace function public.create_trade_request_completed_notification()
returns trigger as $$
declare
    v_book record;
begin
    select * from public.books where id = new.book_id into v_book;

    perform public.create_notification(
        'trade_request_completed',
        new.owner_id,
        'Trade Request Completed',
        'The trade has been completed. Thank you for your trade.',
        to_jsonb(new)
    );

    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_trade_request_completed_notification on public.trade_requests;
create trigger create_trade_request_completed_notification
after update of status on public.trade_requests
for each row
when (new.status = 'completed')
execute function public.create_trade_request_completed_notification();

