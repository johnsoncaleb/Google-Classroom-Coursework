
--Question 1
select * from actor
where last_name = 'Wahlberg'

--Question 2
select amount
from payment
where amount > 3.99 and amount  < 5.99;

--Question 3
select * from inventory
group by inventory_id 
order by count(store_id) desc 

--Question 4
select * from customer
where last_name = 'William';

--Question 5
select * from rental
group by rental_id
order by staff_id

--Question 6
select count(distinct district) from address 

--Question 7
select film_id, count(actor_id) 
from film_actor
group by film_id
ORDER BY COUNT(actor_id) desc
limit 1;

--Question 8
select store_id
from customer
where store_id = '1' and last_name like '%es'

--Question 9
select distinct amount
from payment
where rental_id > '250' and customer_id between '380' and '430';


--Question 10
select distinct rating
from film
where rating is not null;



select rating, COUNT(rating) as value_occurrence
from film
group by rating
order by value_occurrence desc
limit 1;



