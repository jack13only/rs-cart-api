create extension if not exists "uuid-ossp";

create table carts (
  id uuid primary key default uuid_generate_v4(),
  created_at date NOT NULL,
  updated_at date NOT NULL
)

insert into carts (created_at, updated_at) values
  (now(), now())

create table cart_items (
  cart_id uuid,
  product_id uuid,
  count integer,
  foreign key ("cart_id") references "carts" ("id")
)

insert into cart_items (cart_id, product_id, count) values
  ("814833a3-9af9-4817-af7a-ac863c8eba5d", "2250640e-71e2-4444-8c47-2edeac00fddc", 3),
