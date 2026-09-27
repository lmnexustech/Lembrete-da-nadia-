-- Lembrete da Nádia - estrutura inicial para Supabase
create table if not exists profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  name text not null,
  role text not null check (role in ('nadia','responsavel')),
  created_at timestamptz not null default now()
);

create table if not exists supplements (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  dose text not null,
  instruction text,
  image_url text,
  active boolean not null default true,
  stock numeric not null default 0,
  low_stock_threshold numeric not null default 0,
  created_at timestamptz not null default now()
);

create table if not exists schedules (
  id uuid primary key default gen_random_uuid(),
  supplement_id uuid not null references supplements(id) on delete cascade,
  time_local time,
  message text not null,
  snooze_minutes integer not null default 30,
  active boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists intake_logs (
  id uuid primary key default gen_random_uuid(),
  supplement_id uuid not null references supplements(id) on delete cascade,
  scheduled_for timestamptz,
  status text not null check (status in ('tomado','adiado','pendente')),
  confirmed_at timestamptz,
  confirmed_by uuid references auth.users(id),
  created_at timestamptz not null default now()
);

create table if not exists help_requests (
  id uuid primary key default gen_random_uuid(),
  requested_by uuid references auth.users(id),
  message text default 'Preciso de ajuda',
  created_at timestamptz not null default now(),
  resolved_at timestamptz
);
