WITH my_cte AS (
SELECT pizza_name, name, price, pizzeria.id FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
)

SELECT t.pizza_name,
       t.name AS pizzeria_name_1,
       my_cte.name AS pizzeria_name_2,
       t.price FROM my_cte t
         JOIN my_cte ON t.price = my_cte.price AND t.pizza_name = my_cte.pizza_name AND t.id > my_cte.id
ORDER BY pizza_name;