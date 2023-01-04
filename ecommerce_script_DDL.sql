-- DDL Data Definition Language
-- Create table syntax
-- Create Table table_name(col_name, DATA_TYPE, ..)

-- Naming Convention
--    Table name is usally all lowercase and singular

create table customer(
-- column_name DATA_TYPE <CONSTRAINTS>
customer_id serial primary key, -- specifies that it has to be unique and not not null
first_name VARCHAR(50) not null,  -- column cannot be empty
last_name VARCHAR(50) not null, -- column cannot be empty
address VARCHAR(100),
email VARCHAR(50),
loyalty_member boolean default false -- if they don't specify that they are a loyalty member it will automatically say they aren't
);

-- add column to a table
-- SYNTAX
-- ALTER TABLE table_name 
--     ADD COLUMN column_name DATA_TYPE
alter table customer
add column username VARCHAR(20);

-- change data type of column
-- SYNTAX
-- ALTER TABLE table_name 
--      ALTER COLUMN col_name TYPE NEW_DATATYPE
alter table customer 
alter column email type VARCHAR(30);

select *
from customer;

create table "order"(
order_id serial primary key,
order_date TIMESTAMP default CURRENT_TIMESTAMP,
date_shipped TIMESTAMP,
customer_id INTEGER not null,
foreign key(customer_id) references customer(customer_id)
);

select *
from "order";

-- Create Order-Product Table (Join table between the separate order and product tables)

create table order_product(
order_id INTEGER not null,
foreign key(order_id) references "order"(order_id),
product_id INTEGER not null
);

select *
from order_product

create table product(
product_id serial primary key,
prod_name VARCHAR(50) not null,
description VARCHAR(200),
price NUMERIC(5,2)
);

-- Alter the order_product table to add foreign key column
alter table order_product 
add foreign key(product_id) references product(product_id);

-- rename a table
alter table product
rename to item;

alter table item
rename to product;


-- Dropping Table
create table test(
test_id serial primary key,
column_1 INTEGER,
column_2 BOOLEAN
);

alter table test
rename column column_1 to column_one;

drop table if exists test;

create table seller(
seller_id serial primary key,
name VARCHAR(50) not null,
description VARCHAR(200),
email VARCHAR(50)
);


create table category(
category_id serial primary key,
"name" VARCHAR(50) not null,
color VARCHAR(10)
);

alter table product
add column seller_id INTEGER,
add foreign key(seller_id) references seller(seller_id),
add column category_id INTEGER,
add foreign key(category_id) references category(category_id);

select *
from product;


