insert into flick (
flick_name,
rating,
description,
genre 
) values (
'The Life and Times of Robert FLobbert',
'PG-13',
'The heartbreaking story of a man who gave everything to become the greatest kite flyer of all time',
'True Crime'
), (
'Night Vision',
'R',
'When the lights go out in a small village the domestic cats realize they have an advantage and now is the time to strike!',
'Horror'
), (
'One Boot, Two Boots',
'G',
'A charming animated tale about the legs of Lt. Dan adventuring from the jungles of Vietnam back to his home in New York City!',
'Kids'
);

select *
from flick;

insert into ticket (
price,
flick_id
) values (
7.99,
3), (
12.99,
2), (
12.99,
1
);

select *
from ticket;

insert into customer (
first_name,
last_name,
customer_age,
ticket_id,
price
) values (
'Billy',
'Jean',
'25',
3,
12.99
), (
'Calvin',
'Brodus',
'51',
2,
12.99
), (
'Tiny',
'Tim',
'7',
1,
7.99
);


select *
from customer;