/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT country, COUNT(country) AS "Number of Customers" FROM customer
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country ON city.country_id = country.country_id
GROUP BY country
ORDER BY COUNT(country) DESC
LIMIT 1;
