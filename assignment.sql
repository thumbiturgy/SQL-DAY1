--Week 5 DAY 1 Assignment

-- 1. How many actors are there with the last name 'Wahlberg'?
SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- A: 2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- A: 5607

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, count(inventory_id)
FROM inventory
GROUP BY film_id;
-- A: There are 72 films sharing the top spot of 8 copies

-- 4. How many customers have the last name 'William'?
SELECT count(last_name)
FROM customer
WHERE last_name = 'William';
-- A: 0

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, count(payment_id)
FROM payment
GROUP BY staff_id;
-- A: 2

-- 6. How many different district names are there?
SELECT district
FROM address
WHERE district <> ''
GROUP BY district;
-- A: 377

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(actor_id)
FROM film_actor 
GROUP BY film_id;
-- A: Lambs Cincinatti (508)

-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
SELECT store_id, count(last_name)
FROM customer 
WHERE last_name LIKE '_%es' AND store_id = '1'
GROUP BY store_id;
-- A: 13

-- 9. How many payment amounts (4.99, 5.99, etc) had a number of rentals abouve 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(rental_id) > 250
-- A: 3

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, count(film_id)
FROM film
GROUP BY rating;
-- A: 5 rating categories, PG-13 has the most with 223


