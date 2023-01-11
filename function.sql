-- Функція виводить назву вина, яке менше за задану ціну.
DROP FUNCTION IF EXISTS get_cheaper_wine(integer); 

CREATE OR REPLACE FUNCTION  get_cheaper_wine(my_price float8) 
    RETURNS TABLE (wine_name varchar, price float8)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT wines.designation::varchar, wines.price::float8
    FROM wines 
    WHERE wines.price < my_price;
END;
$$;

-- Виклик функції
SELECT * FROM get_cheaper_wine(20.0);
