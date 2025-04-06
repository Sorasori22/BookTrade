alter table public.trade_requests enable row level security;
drop policy if exists "trade_requests: Select policy" on public.trade_requests;
drop policy if exists "trade_requests: Insert policy" on public.trade_requests;
drop policy if exists "trade_requests: Update policy" on public.trade_requests;
drop policy if exists "trade_requests: Delete policy" on public.trade_requests;
create policy "trade_requests: Select policy" on public.trade_requests for select to authenticated using(
    requester_id = (select auth.uid()) or owner_id = (select auth.uid())
);
create policy "trade_requests: Insert policy" on public.trade_requests for insert to authenticated with check (
    true
);
create policy "trade_requests: Update policy" on public.trade_requests for update to authenticated using(
    true
) with check (
    true
);
create policy "trade_requests: Delete policy" on public.trade_requests for delete to authenticated using(
    true
);

alter table public.completed_swaps enable row level security;
drop policy if exists "completed_swaps: Select policy" on public.completed_swaps;
drop policy if exists "completed_swaps: Insert policy" on public.completed_swaps;
drop policy if exists "completed_swaps: Update policy" on public.completed_swaps;
drop policy if exists "completed_swaps: Delete policy" on public.completed_swaps;
create policy "completed_swaps: Select policy" on public.completed_swaps for select to authenticated using(
    requester_id = (select auth.uid()) or owner_id = (select auth.uid())
);
create policy "completed_swaps: Insert policy" on public.completed_swaps for insert to authenticated with check (
    true
);
create policy "completed_swaps: Update policy" on public.completed_swaps for update to authenticated using(
    true
) with check (
    true
);
create policy "completed_swaps: Delete policy" on public.completed_swaps for delete to authenticated using(
    true
);