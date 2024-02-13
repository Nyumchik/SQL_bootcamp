--s1
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;

--s2
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;

--s1
SELECT SUM(rating) FROM pizzeria;

--s2
UPDATE pizzeria SET rating = 1 WHERE name = 'Pizza Hut';
COMMIT;

--s1
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

--s2
SELECT SUM(rating) FROM pizzeria;