/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 *  title            | profit 
 */


select film.title, sum(payment.amount) as profit
from payment
inner join rental on payment.rental_id=rental.rental_id
inner join inventory on rental.inventory_id=inventory.inventory_id
inner join film on inventory.film_id=film.film_id
group by film.title order by profit desc;
