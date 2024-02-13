--s1
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;

--s2
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;

--s1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

--s2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;

--s1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

--s2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';


