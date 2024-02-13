CREATE TABLE IF NOT EXISTS person_audit(
    created timestamp default now() not null,
    type_event char(1) default 'I' not null,
    row_id bigint not null,
    name varchar,
    age integer,
    gender varchar,
    address varchar,
    constraint ch_type_event check (type_event = 'I' OR type_event = 'U' OR type_event = 'D')
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit() 
RETURNS TRIGGER AS 
$$
BEGIN
    INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address) VALUES
    (now(), 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);

    RETURN NEW;
END;
$$ 
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit
    AFTER INSERT ON person
    FOR EACH ROW
    EXECUTE PROCEDURE fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) 
VALUES (10, 'Damir', 22, 'male', 'Irkutsk');

SELECT * FROM person_audit;
