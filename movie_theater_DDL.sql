create table movie (
movie_id serial primary key,
movie_name VARCHAR(50) not null,
rating VARCHAR(10) not null,
description VARCHAR(150),
genre VARCHAR (50) not null
);


create table ticket (
ticket_id serial primary key,
price NUMERIC(5,2) not null,
movie_id INTEGER,
foreign key(movie_id) references movie(movie_id),
movie_name VARCHAR(50) not null,
foreign key(movie_name) references movie(movie_name)
);


--create table customer(
--customer_id serial primary key,
--first_name VARCHAR(50) not null,
--last_name VARCHAR(50),
--customer_age INTEGER not null
--ticket_id INTEGER,
--foreign key(ticket_id) references ticket(ticket_id),
--price NUMERIC(2,2),
--foreign key(price) references ticket(price),
--movie_name VARCHAR(50),
--foreign key(movie_name) references movie(movie_name)
--);


select *
from movie
--
--select *
--from ticket;
--
--drop table if exists customer;



