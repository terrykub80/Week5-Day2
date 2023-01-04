create table flick (
flick_id serial primary key,
flick_name VARCHAR(50),
rating VARCHAR(10),
description VARCHAR(150),
genre VARCHAR (50)
);


create table ticket (
ticket_id serial primary key,
price NUMERIC(5,2),
flick_id INTEGER,
foreign key(flick_id) references flick(flick_id)
);


create table customer(
customer_id serial primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50),
customer_age INTEGER not null,
ticket_id INTEGER,
foreign key(ticket_id) references ticket(ticket_id),
price NUMERIC(2,2)
);


select *
from movie;
--
select *
from ticket;
--
drop table if exists flick;

alter table customer
alter column price type numeric(5,2);

select *
from customer;

