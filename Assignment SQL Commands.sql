--  Assignment : Assignment SQL Commands

-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- Answer
 -- Primary key is unique and identify a record in a table, and foreign keys make a link between tables.
 
 -- List all details of actors
 -- Answer
select * from actor;

-- List all customer information from DB.
-- Answer
select * from customer;

-- List different countries.
-- Answer
select distinct country from country;

-- Display all active customers.
-- Answer
select * from customer;

-- List of all rental IDs for customer with ID 1.
-- Answer
select customer_id, first_name, last_name from customer where active = 1;

--  List of all rental IDs for customer with ID 1. 
-- Answer
select rental_id from rental where customer_id =1;

-- Display all the films whose rental duration is greater than 5
-- Answer
select film_id , title from film where rental_duration >5;


-- List the total number of films whose replacement cost is greater than $15 and less than $20.
-- Answer
select count(title) from film where replacement_cost >15 and replacement_cost <20;


-- Display the count of unique first names of actors.
-- Answer 
select count(distinct first_name) from actor;


-- Display the first 10 records from the customer table
-- Answer
select * from customer limit 10;

-- Display the first 3 records from the customer table whose first name starts with b--
-- Answer
select * from customer where first_name like 'b%' limit 3;


-- Display the names of the first 5 movies which are rated as ‘G
-- Answer
select title from film where rating = "G" limit 5;

-- Find all customers whose first name starts with "a
-- ANswer
select first_name from customer where first_name like "a%";

-- Find all customers whose first name ends with "a
-- ANswer
select first_name from customer where first_name like "%a";

-- Display the list of first 4 cities which start and end with ‘a’ 
-- Answer
select city from city where city like "a%a" limit 4;

-- Find all customers whose first name have "NI" in any position.
-- Answer
select first_name from customer where first_name like "%NI%";

-- Find all customers whose first name have "r" in the second position
-- Answer
select first_name from customer where first_name like "_r%";

 -- Find all customers whose first name starts with "a" and are at least 5 characters in length.
 -- Answer
 select first_name from customer where first_name like "a____";
 
  -- Find all customers whose first name starts with "a" and ends with "o
 -- Answer
 select first_name from customer where first_name like "a%o";
  
  -- Get the films with pg and pg-13 rating using IN operator
 -- Answer
 select title from film where rating in ( "pg" , "pg-13");
  
  -- Get the films with length between 50 to 100 using between operator
-- Answer
  select title from film where length between 50 and 100;
  
  -- Get the top 50 actors using limit operator
  -- Answer
  select * from actor limit 50;
  
  -- Get the distinct film ids from inventory table
  -- Answer
  select distinct film_id from inventory;