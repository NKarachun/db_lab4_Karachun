-- Тригер виконує аудит додавання нових рядків в таблицю testers: 
-- в окремій таблиці testers_audit фіксується поточний час додання нового рядку та ім'я користувача.

SELECT user from testers

CREATE TABLE testers_audit(
	id SERIAL PRIMARY KEY,
	updated TIMESTAMP,
	user_name varchar(50) NOT NULL
);

CREATE OR REPLACE FUNCTION table_testers_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
BEGIN
 	INSERT INTO testers_audit(updated, user_name)
		VALUES(NOW(), user);
	RETURN NULL;
END;
$$ ;

CREATE TRIGGER testers_update_details 
AFTER INSERT ON testers
FOR EACH ROW EXECUTE FUNCTION table_testers_audit();

-- Виклик тригеру
SELECT * FROM testers
INSERT INTO testers(tester_id, tester_name) VALUES ('NT', 'New Tester');
SELECT * FROM testers_audit;