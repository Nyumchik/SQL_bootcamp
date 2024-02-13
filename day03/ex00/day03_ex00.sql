SELECT
	pizza_name,
	price, 
	pizzeria.name AS pizzeria_name, 
	person_visits.visit_date FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id AND person_visits.person_id = 3
WHERE price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name