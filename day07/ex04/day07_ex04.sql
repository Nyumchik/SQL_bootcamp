SELECT 
    person.name, 
    COUNT (*) count_of_visits 
FROM person, person_visits WHERE person.id = person_visits.person_id
GROUP BY person.name
HAVING COUNT(*) > 3;