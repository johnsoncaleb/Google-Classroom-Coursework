--WEEK 5 SQL QUIZ--


--Question 1--
SELECT customer.customer_id, customer.first_name, city
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
WHERE address like  '%Texas%';

--Question 2--
SELECT customer.customer_id, first_name, last_name, amount
FROM payment
FULL JOIN customer
ON  payment.customer_id = customer.customer_id
WHERE amount > 6.99;

--Question 3--
SELECT store_id, first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
)
GROUP BY store_id, first_name, last_name;

--Question 4--
SELECT customer.customer_id, customer.first_name, customer.last_name, customer.email, city, country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal'

--Question 5--
select staff.first_name, staff.last_name, count(staff.staff_id) 
from staff
full join payment
on staff.staff_id = payment.staff_id
group by staff.staff_id
order by staff.staff_id desc 

--Question 6--
select distinct rating, count(rating)
from film
group by rating
order by count(rating) desc

--Question 7--
select distinct first_name, last_name
from customer
where customer_id in (
	select distinct customer_id
	from payment
	where amount > 6.99
)
group by first_name, last_name;

--Question 8--
select count(amount)
from payment
where amount = 0.00;



