-- Run this once in Supabase: SQL Editor > New query > paste > Run.
create table if not exists public.notebook (
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  key text not null,
  data jsonb not null,
  client text,
  updated_at timestamptz not null default now(),
  primary key (user_id, key)
);

alter table public.notebook enable row level security;

create policy "read own notebook"   on public.notebook for select using (auth.uid() = user_id);
create policy "insert own notebook" on public.notebook for insert with check (auth.uid() = user_id);
create policy "update own notebook" on public.notebook for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "delete own notebook" on public.notebook for delete using (auth.uid() = user_id);

-- lets other devices see changes live
alter publication supabase_realtime add table public.notebook;
