--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

	SELECT COUNT(*) FROM film
	WHERE length > (

	SELECT AVG(length) FROM film

	);

--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = (

SELECT MAX(rental_rate)FROM film

);

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT * FROM film
ORDER BY rental_rate ASC, replacement_cost ASC
LIMIT 1;

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer.customer_id, customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
Order By COUNT(customer.customer_id) DESC;



