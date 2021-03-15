/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */

SELECT title FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id IN (SELECT actor.actor_id FROM actor
        INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
        INNER JOIN film ON film_actor.film_id = film.film_id
        WHERE title = 'AMERICAN CIRCUS')
AND title != 'AMERICAN CIRCUS'
GROUP BY title
HAVING COUNT(title) >= 2
ORDER BY title ASC;
