-- Get unread notification count for a user, we don't count the message notifications
create or replace function public.unread_notification_count()
returns integer as
$$
    begin
        return (select coalesce(count(1), 0) 
        from public.notifications where user_id = (select auth.uid()) 
        and read = false 
        and notification_type != 'message');
    end; 
$$ language plpgsql;



-- add realtime capability
alter publication supabase_realtime add table public.notifications;