-- Процедурa get_wine(province_arg) надає інформацію про вино з провінції, вказаної в аргументі.

SELECT *FROM wines

DROP PROCEDURE IF EXISTS get_wine(varchar);
CREATE OR REPLACE PROCEDURE get_wine(province_arg varchar)
LANGUAGE 'plpgsql'
AS $$
DECLARE record_name wines.designation%TYPE;
DECLARE record_province wines.province_id%TYPE;

BEGIN
    SELECT designation, province_id into record_name, record_province FROM wines WHERE province_id = province_arg;
    RAISE INFO 'Wine_name: %,  Wine_province: %', TRIM(record_name), TRIM(record_province);
END;
$$;
-- Виклик процедури
CALL get_wine('NS');
CALL get_wine('AL');
CALL get_wine('SS');

