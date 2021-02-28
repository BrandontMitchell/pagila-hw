/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 * customer_id | first_name  |  last_name   |  sum  ( sortb y last name)
 */

select payment.customer_id, c.first_name, c.last_name, sum(payment.amount) as sum
from customer as c
inner join payment on c.customer_id=payment.customer_id
group by payment.customer_id, c.first_name, c.last_name
order by last_name;
