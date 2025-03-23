-- Create trigger function for trade request notifications
create or replace function public.handle_trade_request_notification()
returns trigger
language plpgsql
security invoker
set search_path = ''
as $$
begin
  -- For new trade requests (always starts with 'pending' status)
  if (tg_op = 'INSERT') then
    -- Only notify the owner about new trade request
    insert into public.notifications (
      user_id,
      content,
      related_trade_id,
      notification_type
    ) values (
      new.owner_id,
      case
        when new.offered_book_id is not null then
          'You have received a new trade request with a book offer for your book'
        else
          'You have received a new trade request for your book'
      end,
      new.id,
      'trade_pending'
    );
  
  -- For updated trade requests
  elsif (tg_op = 'UPDATE') then
    -- Status changed notifications
    if (old.status != new.status) then
      -- Notify based on the new status
      case new.status
        -- When request is accepted
        when 'accepted' then
          -- Only notify the requester since owner is the one who accepted
          insert into public.notifications (
            user_id,
            content,
            related_trade_id,
            notification_type
          ) values (
            new.requester_id,
            'Your trade request has been accepted! You can now coordinate the exchange.',
            new.id,
            'trade_accepted'
          );

        -- When request is rejected
        when 'rejected' then
          -- Only notify the requester since owner is the one who rejected
          insert into public.notifications (
            user_id,
            content,
            related_trade_id,
            notification_type
          ) values (
            new.requester_id,
            'Your trade request has been rejected.',
            new.id,
            'trade_rejected'
          );

        -- When trade is completed
        when 'completed' then
          -- Notify the other party who didn't mark it as completed
          -- We can determine this by checking the last_modified_by if you add that column
          -- For now, notify both since we don't track who marked it complete
          insert into public.notifications (
            user_id,
            content,
            related_trade_id,
            notification_type
          ) values (
            case 
              when new.requester_id = auth.uid() then new.owner_id
              when new.owner_id = auth.uid() then new.requester_id
              else new.requester_id -- fallback if auth.uid() is not available
            end,
            'The trade has been marked as completed! Don''t forget to rate your experience.',
            new.id,
            'trade_completed'
          );

      end case;
    end if;
  end if;

  return new;
end;
$$;

-- Create the trigger
create trigger trade_request_notifications
  after insert or update
  on public.trade_requests
  for each row
  execute function public.handle_trade_request_notification();

-- Add comment
comment on function public.handle_trade_request_notification() is 'Trigger function to create notifications for trade request events'; 