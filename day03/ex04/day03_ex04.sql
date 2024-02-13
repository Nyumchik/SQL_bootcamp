(SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE gender = 'male'
 
EXCEPT
 
SELECT pizzeria.name FROM person 
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE gender = 'female')

UNION

(SELECT pizzeria.name FROM person 
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE gender = 'female'
 
EXCEPT
 
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE gender = 'male')

ORDER BY pizzeria_name
