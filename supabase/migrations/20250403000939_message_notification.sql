-- create message notification
create or replace function public.create_message_notification()
returns trigger as $$
declare
    v_sender record;
begin
    select * from public.profiles where id = new.sender_id into v_sender;

    -- Only create notifications for text messages, other message types are handled by other triggers
    if new.type != 'text' then
        return new;
    end if;

    perform public.create_notification(
        'message',
        new.recipient_id,
        coalesce(v_sender.fullname, v_sender.username),
        new.content,
        to_jsonb(new)
    );

    return new;
end;
$$ language plpgsql security definer;

drop trigger if exists create_message_notification on public.messages;
create trigger create_message_notification 
after insert on public.messages 
for each row execute function public.create_message_notification();