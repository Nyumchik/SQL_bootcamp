SELECT person.name FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE gender= 'female'
	AND pizza_name = 'pepperoni pizza'
	
INTERSECT

SELECT person.name FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE gender= 'female'
	AND pizza_name = 'cheese pizza'

ORDER BY name