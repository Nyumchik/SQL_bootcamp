INSERT INTO  person_discounts (id, person_id, pizzeria_id, discount)

WITH my_cte AS (SELECT
        person_order.person_id,
        pizzeria.id AS pizzeria_id,
        COUNT(*) AS amount_of_orders
     FROM person_order, person, menu, pizzeria
     WHERE
        person.id = person_order.person_id
        AND menu.id = person_order.menu_id
        AND pizzeria.id = menu.pizzeria_id
        GROUP BY 1, 2
        ORDER BY 1)

SELECT
    ROW_NUMBER( ) OVER ( ) AS id,
    my_cte.person_id,
    my_cte.pizzeria_id,
    CASE
        WHEN my_cte.amount_of_orders = 1 THEN 10.5
        WHEN my_cte.amount_of_orders = 2 THEN 22
        ELSE 30
    END AS discount FROM my_cte;
