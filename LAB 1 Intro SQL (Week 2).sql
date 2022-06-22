#1
USE sakila;
# 2 get all data from actor, film, customer
SELECT * FROM actor, film, customer; 
#3 get film titles
SELECT title FROM film;
SELECT * FROM film;
# select only the different languages, without the connection to a specific film
# type SELECT click name(under language) FROM click (outer) languagestaffstaff_id
# 4 list of different languages used in the films
SELECT name FROM language;
# 5.1 amount of addresses and store_ids show the amount of stores
SELECT address_id FROM store;
SELECT store_id FROM store;
# 5.2 how many employees
SELECT count(staff_id) FROM staff;
# 5.3 first names of employees
SELECT first_name FROM staff;