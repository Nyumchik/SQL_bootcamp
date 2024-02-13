WITH my_cte AS (
	SELECT visit_date FROM person_visits 
	WHERE person_id = 1 OR person_id = 2
	AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
)

SELECT DISTINCT d::date AS missing_date
FROM generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') d
LEFT JOIN my_cte ON d = my_cte.visit_date
WHERE my_cte.visit_date IS NULL
ORDER BY missing_date;