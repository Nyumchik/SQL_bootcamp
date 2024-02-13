DROP FUNCTION IF EXISTS fnc_persons_female();
DROP FUNCTION IF EXISTS fnc_persons_male();

CREATE OR REPLACE FUNCTION fnc_persons(pgender varchar default 'female') 
RETURNS TABLE(id bigint, name varchar, age bigint, gender varchar, address varchar) AS 
$$
    SELECT * FROM person WHERE gender = pgender; 
$$
LANGUAGE sql;

select *
from fnc_persons(pgender := 'male');

select *
from fnc_persons();