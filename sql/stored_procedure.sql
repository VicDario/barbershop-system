CREATE OR REPLACE PROCEDURE get_data(year_param INTEGER, OUT data_cursor REFCURSOR)
LANGUAGE plpgsql
AS $$
BEGIN
    data_cursor := 'data_cursor';
    OPEN data_cursor FOR
    SELECT 
        s.name AS service_name,
        SUM(s.base_price) AS total_revenue
    FROM bookings b
    JOIN attends a ON b.code = a.booking_code
    JOIN services s ON a.service_code = s.code
    WHERE EXTRACT(YEAR FROM b.date) = year_param
    GROUP BY s.name;
END;
$$;