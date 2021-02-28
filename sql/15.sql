/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 * name     | sum
 */

select category.name, count(language.name) as sum
from category
inner join film_category on category.category_id=film_category.category_id
inner join film on film_category.film_id=film.film_id
inner join language on film.language_id=language.language_id
where language.name = 'English'
group by category.name;
