insert into storage.buckets (id, name, public)
values ('images', 'images', true);

CREATE POLICY "All all actions to authenticated images 1" ON storage.objects FOR SELECT TO authenticated USING (bucket_id = 'images');
CREATE POLICY "All all actions to authenticated images 2" ON storage.objects FOR INSERT TO authenticated WITH CHECK (bucket_id = 'images');
CREATE POLICY "All all actions to authenticated images 3" ON storage.objects FOR UPDATE TO authenticated USING (bucket_id = 'images');
CREATE POLICY "All all actions to authenticated images 4" ON storage.objects FOR DELETE TO authenticated USING (bucket_id = 'images');
