--s1
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;

--s2
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;

--s1
UPDATE pizzeria SET rating = 5 WHERE id = 1;

--s2
UPDATE pizzeria SET rating = 5 WHERE id = 2;

--s1
UPDATE pizzeria SET rating = 4 WHERE id = 2;

--s2
UPDATE pizzeria SET rating = 4 WHERE id = 1;

--s1
COMMIT;

--s2
COMMIT;


