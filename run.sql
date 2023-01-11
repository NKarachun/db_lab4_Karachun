-- Виклик функції
SELECT * FROM get_cheaper_wine(24.0);
SELECT * FROM get_cheaper_wine(17.0);
SELECT * FROM get_cheaper_wine(30.0);

-- Виклик процедури
CALL get_wine('NS');
CALL get_wine('AL');
CALL get_wine('SS');

-- Виклик тригеру
SELECT * FROM testers
INSERT INTO testers(tester_id, tester_name) VALUES ('NT', 'New Tester');
INSERT INTO testers(tester_id, tester_name) VALUES ('NT2', 'New Tester 2');
INSERT INTO testers(tester_id, tester_name) VALUES ('NT3', 'New Tester 3');
SELECT * FROM testers_audit;
