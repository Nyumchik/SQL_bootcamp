SELECT person.name FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE gender= 'male'
	AND  address  IN ('Moscow', 'Samara')
	AND pizza_name IN ('pepperoni pizza','mushroom pizza')
ORDER BY name DESC