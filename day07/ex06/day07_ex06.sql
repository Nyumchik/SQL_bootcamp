SELECT
    pizzeria.name,
    COUNT(*) AS amount_of_orders,
    CAST(ROUND(AVG(price), 2) AS float) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM pizzeria, person_order, menu
WHERE person_order.menu_id = menu.id AND pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name
ORDER BY pizzeria.name;