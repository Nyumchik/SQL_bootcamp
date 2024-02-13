CREATE INDEX IF NOT EXISTS idx_menu_pizzeria_id ON menu(pizzeria_id);
CREATE INDEX IF NOT EXISTS idx_person_visits_person_id ON person(id);
CREATE INDEX IF NOT EXISTS idx_person_visits_pizzeria_id ON pizzeria(id);
CREATE INDEX IF NOT EXISTS idx_person_order_person_id ON person(id);
CREATE INDEX IF NOT EXISTS idx_person_order_menu_id ON menu(id);
