/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT f.film_id, f.title, count(inventory.film_id) as count
FROM film as f
INNER JOIN inventory on inventory.film_id=f.film_id
WHERE f.title LIKE 'H%'
GROUP BY f.film_id, f.title
ORDER BY f.title DESC;
