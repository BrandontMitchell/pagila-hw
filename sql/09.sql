/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT staff.first_name, staff.last_name, sum(payment.amount) as sum
FROM staff
INNER JOIN payment ON staff.staff_id=payment.staff_id
WHERE EXTRACT(month FROM payment_date) = 1 AND EXTRACT(year FROM payment_date) = 2020
GROUP BY staff.first_name, staff.last_name;
