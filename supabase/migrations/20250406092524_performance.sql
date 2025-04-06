
create or replace function public.missing_fk_indexes2()
  returns setof varchar
  language sql
as $$
  select
    -- create index sentence
    'create index on ' ||
      tc.conrelid::regclass ||
      '(' ||
      string_agg(ta.attname, ', ' order by tx.n) ||
      ');' as create_index
  from
    pg_catalog.pg_constraint tc
    -- enumerated key column numbers per foreign key
    cross join lateral unnest(tc.conkey) with ordinality as tx(attnum, n)
    -- name for each key column
    join pg_catalog.pg_attribute ta on ta.attnum = tx.attnum and ta.attrelid = tc.conrelid
    -- check for public schema tables only
    join pg_catalog.pg_namespace ns on ns.oid = tc.connamespace and ns.nspname = 'public'
  where not exists (
    -- is there ta matching index for the constraint?
    select 1 from pg_catalog.pg_index i
    where
      i.indrelid = tc.conrelid and
      -- the first index columns must be the same as the key columns, but order doesn't matter
      (i.indkey::smallint[])[0:cardinality(tc.conkey)-1] @> tc.conkey
  ) and tc.contype = 'f'
  group by
    tc.conrelid,
    tc.conname,
    tc.confrelid
  order by
    pg_catalog.pg_relation_size(tc.conrelid) desc
$$;



DO $$
BEGIN
    execute (
        select coalesce(string_agg(missing_fk_indexes2, ''), 'drop function if exists public.missing_fk_indexes2();') from missing_fk_indexes2()
    );
END $$;
