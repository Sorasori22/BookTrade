-- Migration to enable Row Level Security (RLS) on all tables in the public schema
-- This sets up basic security policies for all tables

-- Function to enable RLS on all tables
create or replace function public.enable_rls_on_all_tables()
returns void
language plpgsql
security invoker
set search_path = ''
as $$
declare
  table_record record;
begin
  for table_record in 
    select tablename 
    from pg_tables 
    where schemaname = 'public'
  loop
    execute format('alter table public.%I enable row level security', table_record.tablename);
    
    -- Create SELECT policy for authenticated users
    execute format('
      create policy "%1$I: Select policy" 
      on public.%1$I
      for select 
      to authenticated
      using (true)
    ', table_record.tablename);
    
    -- Create SELECT policy for anonymous users
    execute format('
      create policy "%1$I: Select policy for anon" 
      on public.%1$I
      for select 
      to anon
      using (true)
    ', table_record.tablename);
    
    -- Create INSERT policy for authenticated users
    execute format('
      create policy "%1$I: Insert policy" 
      on public.%1$I
      for insert 
      to authenticated
      with check (true)
    ', table_record.tablename);
    
    -- Create UPDATE policy for authenticated users
    execute format('
      create policy "%1$I: Update policy" 
      on public.%1$I
      for update 
      to authenticated
      using (true)
      with check (true)
    ', table_record.tablename);
    
    -- Create DELETE policy for authenticated users
    execute format('
      create policy "%1$I: Delete policy" 
      on public.%1$I
      for delete 
      to authenticated
      using (true)
    ', table_record.tablename);
    
    raise notice 'Enabled RLS on table: %', table_record.tablename;
  end loop;
end;
$$;

-- Execute the function to enable RLS on all tables
select public.enable_rls_on_all_tables();

-- Drop the function after use
drop function public.enable_rls_on_all_tables();

-- Add a comment explaining what this migration does
comment on schema public is 'All tables in this schema have RLS enabled with permissive policies. Review and restrict these policies as needed for your application security requirements.';
