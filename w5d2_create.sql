CREATE TABLE Movies (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  run_start DATE,
  run_end DATE,
  seats INTEGER
);

CREATE TABLE Customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  age INTEGER,
  phone_number VARCHAR(20)
);


CREATE TABLE Discounts (
  discount_id SERIAL PRIMARY KEY,
  discount NUMERIC(4,2),
  category VARCHAR(20)
);


CREATE TABLE Staff (
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  hourly_wage NUMERIC(4,2),
  discount_id INTEGER NOT NULL,
    FOREIGN KEY (discount_id)
      REFERENCES Discounts(discount_id)
);




CREATE TABLE Membership (
  member_id SERIAL PRIMARY KEY,
  category VARCHAR(20),
  fee NUMERIC(4,2),
  discount_id INTEGER NOT NULL,
    FOREIGN KEY (discount_id)
      REFERENCES Discounts(discount_id),
  customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id)
      REFERENCES Customers(customer_id)
);


CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  price NUMERIC(4,2),
  discount_id INTEGER NOT NULL,
    FOREIGN KEY (discount_id)
      REFERENCES Discounts(discount_id)
);

CREATE TABLE Concessions (
  concession_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  stock INTEGER,
  price NUMERIC(4,2),
  discount_id INTEGER NOT NULL,
    FOREIGN KEY (discount_id)
      REFERENCES Discounts(discount_id)
);



CREATE TABLE movie_tickets (
  movie_tickets_id SERIAL PRIMARY KEY,
  ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id)
      REFERENCES Tickets(ticket_id),
  movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id)
      REFERENCES Movies(movie_id)
);