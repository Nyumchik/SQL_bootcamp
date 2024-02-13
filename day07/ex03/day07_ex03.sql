WITH my_cte AS (
    (SELECT
    name,
    COUNT(*) as count,
    'order' as action_type
FROM pizzeria, person_order, menu
WHERE person_order.menu_id = menu.id AND menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.id
ORDER BY count DESC)

UNION ALL

(SELECT
    name,
    COUNT(*) as count,
    'visit' as action_type
FROM pizzeria, person_visits
WHERE person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.id
ORDER BY count DESC )

ORDER BY action_type, count DESC
)

SELECT name, sum(count) total_count FROM my_cte
GROUP BY name
ORDER BY total_count DESC