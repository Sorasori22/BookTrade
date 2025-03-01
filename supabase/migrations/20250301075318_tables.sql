alter table public.tableName enable row level security;

drop policy if exists "tableName: Select policy" on public.tableName;
drop policy if exists "tableName: Insert policy" on public.tableName;
drop policy if exists "tableName: Update policy" on public.tableName;
drop policy if exists "tableName: Delete policy" on public.tableName;
create policy "tableName: Select policy" on public.tableName for select to authenticated using(
    true
);
create policy "tableName: Insert policy" on public.tableName for insert to authenticated with check (
    true
);
create policy "tableName: Update policy" on public.tableName for update to authenticated using(
    true
) with check (
    true
);
create policy "tableName: Delete policy" on public.tableName for delete to authenticated using(
    true
);
