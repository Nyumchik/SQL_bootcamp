SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person.id = person_visits.person_id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE person.name = 'Andrey'
 
EXCEPT
 
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Andrey'

ORDER BY pizzeria_name