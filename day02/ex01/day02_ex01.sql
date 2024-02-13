SELECT DISTINCT d::date AS missing_date
FROM generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') d
LEFT JOIN (SELECT visit_date FROM person_visits 
		   WHERE (person_id = 1 OR person_id = 2)) tmp
		   ON d = tmp.visit_date
WHERE visit_date IS NULL
ORDER BY missing_date;