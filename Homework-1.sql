--1. How many actors are there with the last name ‘Wahlberg’?
select last_name, count(last_name)
from actor 
where last_name = 'Wahlberg'
group by last_name 

--answer is 2 


--2. How many payments were made between $3.99 and $5.99
select count(amount)
from payment 
where amount between 3.99 and 5.99

--answer is 5,602



--3. What film does the store have the most of? (search in inventory)
select film_id ,count(film_id)
from inventory 
group by film_id 

--the answer is academy dinosaur



--4. How many customers have the last name ‘William’?
select last_name
from customer 
where last_name = 'William'



--the answer in 0






--5. What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id)
from rental 
group by (staff_id)

--the answer is id 1 "Mike"




--6. How many different district names are there?
select count(distinct district)
from address 

--the answer is 378




--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id ,count(actor_id) 
from film_actor 
group by film_id  

--the answer is id 508 "Lambs Cincinatti"






--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name)
from customer 
where last_name like '%es' and store_id ='1'

--the answer is 13 




--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select amount,count(amount)
from payment 
where customer_id between 380 and 430
group by amount
having count(amount)>250





--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

select rating, count(rating) 
from film 
group by rating 

--the answer is pg-13 


