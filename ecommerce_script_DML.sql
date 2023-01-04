-- Add a row of data to the custoemr table
-- SYNTAX
-- INSERT INTO table_name(col_1, col_2, etc. values(val_1, val_2, etc.)

insert into customer(
first_name,
last_name,
email,
loyalty_member,
username 
) values (
'Robert',
'Flobbert',
'robertflobbert@gmail.com',
true,
'robertf'
);

select *
from customer;


-- Insert data without column names
insert into customer values (
3,
'Freddie',
'Kruger',
'freddie@scarytown.gov',
'321 Elm St',
'1',
'freddiek'
);


-- Only insert first_name and last_name
insert into customer(
first_name,
last_name
) values (
'Jason',
'category'
);



insert into seller(
name,
description,
email
) values (
'New Egg',
'Computer Parts',
'newegggothacked@gmail.com'
);

select *
from seller;

insert into category (
name,
color
) values (
'rasberry pi',
'red'
);

insert into category (
name,
color
) values (
'usb drives',
'blue'
), (
'water bottles',
'clear'
);

select *
from category;


-- Add multiple rows of data in one command
-- SYNTAX
-- INSERT INTO table(col1, col2, etc.) VALUES(val1, val2, etc.), (vala, valb, etc.)
insert into product(
prod_name,
description,
price,
seller_id,
category_id
) values (
'pico pi',
'all the rasberry pis are sold out',
999.99,
1,
1
), (
'usb c',
'I fit in a Nintendo Switch',
30.00,
1,
2
);

select *
from product

--insert into product(
--prod_name,
--description,
--price,
--seller_id,
--category_id
--) values (
--'banana pi',
--'all the rasberry pis and pico pis are sold out',
--999.99,
--1,
--1
--), (
--'usb c',
--'I fit in a Nintendo Switch',
--30.00,
--40,
--2
--);

-- Updating data
-- SYNTAX
-- UPDATE table_name 
-- SET col_name = value, etc. 
-- WHERE condition (using without WHERE will updat ALL ROWS)
update customer 
set address = '555 Fake St.'
where customer_id = 1;

update customer 
set address = '321 Elm St'
where customer_id = 3;

update customer
set email = 'freddie@scarytown.gov'
where customer_id = 3;

select *
from customer;

update customer 
set loyalty_member = false;

update customer
set last_name = 'Vorhees'
where customer_id = 2;

update customer
set username = 'jvorhees'
where customer_id = 2;

-- A DELETE FROM without a where will delete all rows
-- PERMANENT!!

select *
from product

-- DELETE all products with a price less than 999.99
-- SYNTAX
-- DELETE FROM table_name
-- WHERE conditions
delete from product
where price < 999.99;
