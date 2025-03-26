alter publication supabase_realtime add table public.messages;

-- function to return chat list with last message and chat partner info for each conversation
create or replace function public.get_chat_list(
    page_limit integer default 20,
    page_offset integer default 0,
    p_filter jsonb default '{}' -- we implement this later
)
returns table (
    message_id bigint,
    recipient_id uuid,
    recipient_name text,
    recipient_avatar_path text,
    last_message text,
    last_message_time timestamptz,
    unread_count bigint,
    is_sender boolean
) as 
$$
    begin
        return query
            with latest_messages as (
                select distinct on (
                    case 
                        when m.sender_id < m.recipient_id then m.sender_id || ':' || m.recipient_id
                        else m.recipient_id || ':' || m.sender_id
                    end
                )
                    m.id as message_id,
                    m.sender_id,
                    m.recipient_id,
                    m.content as last_message,
                    m.created_at as last_message_time,
                    m.sender_id = (select auth.uid()) as is_sender
                from public.messages m
                where m.sender_id = (select auth.uid()) or m.recipient_id = (select auth.uid())
                order by 
                    case 
                        when m.sender_id < m.recipient_id then m.sender_id || ':' || m.recipient_id
                        else m.recipient_id || ':' || m.sender_id
                    end,
                    m.created_at desc
            ),
            unread_counts as (
                select 
                    case 
                        when m.sender_id < m.recipient_id then m.sender_id || ':' || m.recipient_id
                        else m.recipient_id || ':' || m.sender_id
                    end as chat_key,
                    count(*) as unread_count
                from public.messages m
                where m.recipient_id = (select auth.uid()) and m.read = false
                group by 1
            )
            select 
                m.message_id,
                case 
                    when m.sender_id = (select auth.uid()) then m.recipient_id 
                    else m.sender_id 
                end as recipient_id,
                coalesce(p.fullname, p.username) as recipient_name,
                p.avatar_url as recipient_avatar_url,
                m.last_message,
                m.last_message_time,
                coalesce(u.unread_count, 0) as unread_count,
                m.is_sender
            from latest_messages m
            join public.profiles p on p.id = case 
                when m.sender_id = (select auth.uid()) then m.recipient_id 
                else m.sender_id 
            end
            left join unread_counts u on u.chat_key = case 
                when m.sender_id < m.recipient_id then m.sender_id || ':' || m.recipient_id
                else m.recipient_id || ':' || m.sender_id
            end
            order by m.last_message_time desc
            limit page_limit
            offset page_offset;
    end;
$$ language plpgsql;


drop function if exists public.clear_unread_count(uuid);
create or replace function public.clear_unread_count(
    p_sender_id uuid
)
returns void as
$$
    begin
        if p_sender_id is null then
            perform public.raise_kimapp_error('p_sender_id is null');
        end if;

        update public.messages
        set read = true
        where sender_id = p_sender_id and recipient_id = (select auth.uid()) and read = false;
    end; 
$$ language plpgsql;