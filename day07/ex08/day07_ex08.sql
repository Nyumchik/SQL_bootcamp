SELECT
    person.address,
    pizzeria.name,
    COUNT(*) AS count_of_orders
FROM person, person_order, menu, pizzeria
WHERE person.id = person_order.person_id 
    AND menu.id = person_order.menu_id 
    AND pizzeria.id = menu.pizzeria_id
GROUP BY person.address, pizzeria.name
ORDER BY person.address, pizzeria.name;