from src.db.postgresql import DatabaseInterface

class DailyClientsAttendedRepository():
    def __init__(self, db: DatabaseInterface):
        self.db = db
        
    def get_daily_attended(self):
        return self.db.fetch_all("""
    SELECT 
        date, 
        c.rut AS client_rut, 
        CONCAT(c.name, ' ', c.surname) AS client_name, 
        c.email AS client_email, 
        b.code AS booking_code, 
        b.shop_id AS shop_id
    FROM bookings b
    JOIN clients c ON c.rut = c.rut
    JOIN attends a ON b.code = booking_code
    GROUP by date, c.rut, b.code, b.shop_id
    ORDER BY date;                            
                                 
                                 """)