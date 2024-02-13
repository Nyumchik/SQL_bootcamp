CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson varchar default 'Dmitriy',
    pprice bigint default 500,
    pdate date default '2022-01-08')
RETURNS TABLE (pizzeria_name varchar) AS 
$$
    BEGIN
    RETURN QUERY
        SELECT pizzeria.name
        FROM pizzeria, person, person_visits, menu
        WHERE person.name = pperson AND person_visits.pizzeria_id = pizzeria.id 
            AND person_visits.visit_date = pdate AND person_visits.person_id = person.id
            AND menu.pizzeria_id = pizzeria.id AND menu.price < pprice;
    END;
$$ 
LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');


