--create customer table
--create movie table
--create ticket table

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    age INTEGER NOT NULL, 
    movie_title VARCHAR(50)
)

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(50),
    movie_time TIME,
    movie_rating VARCHAR(50) 
    theater_number INTEGER NOT NULL
)

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    price MONEY,
    movie_title VARCHAR(50),
    movie_time TIME, 
    theater_number INTEGER,
    movie_rating VARCHAR,
    date_time TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)

)

CREATE TABLE concessions(
    food_id SERIAL PRIMARY KEY,
    drink_id SERIAL,
    food_item VARCHAR(50),
    drink_item VARCHAR(50),
    price_con MONEY NOT NULL

)

