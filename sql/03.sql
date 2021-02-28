/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */

SELECT UPPER(last_name) as last_name
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name;
