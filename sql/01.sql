/*
 * Write a SQL query SELECT query that:
 * computes the number of customers who live outside of the US.
 */

SELECT COUNT(*) AS "Number of Customers" FROM customer
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country ON city.country_id = country.country_id
WHERE country != "United States"
