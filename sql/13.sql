/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 * film_id |      title       | language_id |         name    
 */

select f.film_id, f.title, f.language_id, language.name
from film as f
inner join language on f.language_id=language.language_id
where f.title like 'K%' or f.title like 'Q%'
order by f.title asc;
