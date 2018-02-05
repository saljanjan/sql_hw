#1a.
last_name
 FROM sakila.actor;
 #1b.
ALTER TABLE sakila.actor
ADD  COLUMN Actor_Name VARCHAR(50 ) 
AFTER last_name;
alter table sakila.actor drop column Actor_Name;
#2a
SELECT CONCAT_WS( "  ", first_name, last_name ) AS Actor_Name
FROM sakila.actor;
--- 2b
SELECT first_name, last_name, actor_id
FROM sakila.actor
WHERE first_name like 'joe%';

SELECT 
last_name like '%GEN% '
FROM actor;


USE sakila;
SELECT * FROM actor;

#2c
USE sakila;
SELECT last_name , first_name
FROM actor
WHERE last_name LIKE "%li%"
ORDER BY last_name,  first_name;

#2D
SELECT 
    country_id, country
 FROM country
 WHERE country IN("AFGHANISTAN", "Bangladesh", "CHINA ");
 
 # 3A
 USE sakila;
 ALTER TABLE sakila.actor
ADD  COLUMN middle_name VARCHAR(50 ) 
AFTER first_name;
 select * from actor;
 
 
 
 SELECT * FROM actor;
 
ALTER TABLE actor
MODIFY COLUMN  middle_name BLOB ;
DESCRIBE ACTOR;
DESCRIBE ACTOR;

#3c
alter table actor
 drop column middle_name;
 
 SELECT * FROM ACTOR;
 
 #4a
SELECT COUNT(last_name)
FROM actor; # 200
 #4B
 SELECT actor.last_name, COUNT(*) AS count
FROM actor
GROUP BY actor.last_name
HAVING count >= 2;
 
# 4c
SELECT 
FIRST_NAME = ' GROUCHO', LAST_NAME = 'WILLIAMS'
FROM sakila.actor;

SELECT first_name, last_name 
FROM actor
WHERE FIRST_NAME = 'GROUCHO' AND last_name = 'Williams';

SELECT first_name, last_name 
FROM actor
WHERE FIRST_NAME = 'Harpo' AND last_name = 'Williams';

#4d
UPDATE sakila.actor
SET first_name = 'MUCHO'
WHERE actor_id = 172;

#5a
CREATE TABLE address(address_id SMALL INT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                        address VARCHAR (50) NOT NULL,
                                         address2 VARCHAR (50) ,
                                         district VARCHAR (50) NOT NULL,
                                         city_id SMALL INT(5),
                                         postal_code VARCHAR(10) , 
                                         phone VARCHAR(20) NOT NULL,
                                         last_update(timestamp) NOT NULL
);

6a.
#6a
SELECT  first_name, last_name, address
FROM staff JOIN address
ON staff.address_id = address.address_id;

#6b
SELECT sum(amount) , staff.staff_id
FROM payment
INNER JOIN staff
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id;

#6c
SELECT COUNT(actor.first_name) AS `number of actors`, film.title
FROM actor

INNER JOIN film_actor 
ON actor.actor_id = film_actor.actor_id

    INNER JOIN film
   ON film_actor.film_id = film.film_id

GROUP BY film.title;

#6d

SELECT * FROM inventory
SELECT * FROM film_text
    
SELECT film_text.title COUNT(i.inventory_id) AS Inventory 
FROM film_text
NNER JOIN inventory 
ON film_text.film_id = inventory.film_id,
WHERE film_text.title = "Hunchback Impossible";

#6e

#6d
    SELECT * FROM customer
    SELECT * FROM payments
    
    SELECT customer.last_name,  customer.first_name, SUM(payment.amount) AS Total Amount
    FROM coustomer
    INNER JOIN payment
    GROUP BY customer.customer_id = payment.customer_id
    ORDER BY last_name ASC;

# 7a




 

