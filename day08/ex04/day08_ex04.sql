--s1
BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--s2
BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

--s1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

--s2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;

--s1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

--s2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

