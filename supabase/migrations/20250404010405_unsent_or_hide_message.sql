alter table public.messages add column if not exists unsent boolean default false;
alter table public.messages add column if not exists hidden_from uuid[] not null default '{}';

-- This act like deletion
drop function if exists public.hide_all_my_messages(uuid);
create or replace function public.hide_all_my_messages(p_recipient_id uuid)
returns void as
$$
    begin
        update public.messages set hidden_from = array_append(hidden_from, (select auth.uid())) where (sender_id = (select auth.uid()) and recipient_id = p_recipient_id) or (recipient_id = (select auth.uid()) and sender_id = p_recipient_id);
    end; 
$$ language plpgsql security definer;


alter table public.messages enable row level security;
drop policy if exists "messages: Select policy" on public.messages;
drop policy if exists "messages: Insert policy" on public.messages;
drop policy if exists "messages: Update policy" on public.messages;
drop policy if exists "messages: Delete policy" on public.messages;
create policy "messages: Select policy" on public.messages for select to authenticated using(
    (sender_id = (select auth.uid()) or recipient_id = (select auth.uid())) and not (hidden_from @> array[(select auth.uid())])
);
create policy "messages: Insert policy" on public.messages for insert to authenticated with check (
    true
);
create policy "messages: Update policy" on public.messages for update to authenticated using(
    true
) with check (
    true
);
create policy "messages: Delete policy" on public.messages for delete to authenticated using(
    true
);


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
    is_sender boolean,
    message_type text
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
                    case 
                        when m.unsent = true or m.hidden_from @> array[(select auth.uid())] then 'Message was deleted' 
                        else m.content 
                    end as last_message,
                    m.created_at as last_message_time,
                    m.sender_id = (select auth.uid()) as is_sender,
                    m.type as message_type
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
                m.is_sender,
                m.message_type
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
$$ language plpgsql security definer; -- to not effect by rls
