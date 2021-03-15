/*
 * Write a SQL query SELECT query that:
 * List the first and last names of all actors who have appeared in movies in the "Children" category,
 * but that have never appeared in movies in the "Horror" category.
 *
 * HINT:
 * This requires joining from the category table down to the actor table.
 */

SELECT DISTINCT ON (first_name || ' ' || last_name) first_name, last_name FROM actor 
    INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id 
    INNER JOIN film ON film_actor.film_id = film.film_id 
    INNER JOIN film_category ON film.film_id = film_category.film_id 
    INNER JOIN category ON film_category.category_id = category.category_id 
    WHERE category.name = 'Children'
            AND category.name != 'Horror'
    ORDER BY ("first_name" || ' ' || "last_name") ASC;
