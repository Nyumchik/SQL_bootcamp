(SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person.id = person_visits.person_id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE gender = 'male'
 
EXCEPT ALL
 
SELECT pizzeria.name FROM person 
JOIN person_visits ON person.id = person_visits.person_id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE gender = 'female')

UNION ALL

(SELECT pizzeria.name FROM person 
JOIN person_visits ON person.id = person_visits.person_id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE gender = 'female'
 
EXCEPT ALL
 
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person.id = person_visits.person_id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE gender = 'male')

ORDER BY pizzeria_name
