--s1
BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--s2
BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

--s1
SELECT SUM(rating) FROM pizzeria;

--s2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
COMMIT;

--s1
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

--s2
SELECT SUM(rating) FROM pizzeria;