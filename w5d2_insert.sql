-- why yes, all of this is referencing One Specific Novel

INSERT INTO Movies(
	movie_id,
	title,
  	run_start,
  	run_end,
  	seats
)VALUES(
	49,
	'Three Ways to Survive in a Ruined World',
	'2018-01-06',
	'2018-12-21',
	36
), (
	51,
	'Omniscient Readers Viewpoint',
	'2020-02-02',
	'2020-03-06',
	50
);

SELECT *
FROM Movies


INSERT INTO Customers (
  	customer_id,
  	first_name,
  	last_name,
  	age,
  	phone_number
) VALUES(
	51,
	'Dokja',
	'Kim',
	28,
	'82(142) 551-5149'

), (
	3,
	'Junghyeok',
	'Yu',
	28,
	'82(142) 999-1863'
);

SELECT *
FROM Customers

INSERT INTO Discounts (
  discount,
  category
) VALUES(
	3.00,
	'Employee'
), (
	4.50,
	'Membership'
);

SELECT *
FROM Discounts


INSERT INTO Staff (
  first_name,
  last_name,
  hourly_wage,
  discount_id
)VALUES(
	'Sangah',
	'Yu',
	14.00,
	1
),(
	'Suyeong',
	'Han',
	13.50,
	1
);

SELECT *
FROM Staff


INSERT INTO Membership (
  member_id,
  category,
  fee,
  discount_id,
  customer_id
) VALUES(
	181,
	'Oldest',
	15.00,
	2,
	3
),(
	513,
	'Dream',
	15.00,
	2,
	51
);

SELECT *
FROM Membership


INSERT INTO Tickets (
  price,
  discount_id
) VALUES(
	10.45,
	1
),(
	10.45,
	2
);

SELECT *
FROM Tickets

INSERT INTO Concessions (
  "name",
  stock,
  price,
  discount_id
)VALUES(
	'popcorn',
	60,
	5.00,
	2
),(
	'dumplings',
	17,
	8.00,
	2
);

SELECT *
FROM Concessions

INSERT INTO movie_tickets (
  ticket_id,
  movie_id
)VALUES(
	1,
	49
),(
	2,
	51
);

SELECT *
FROM movie_tickets