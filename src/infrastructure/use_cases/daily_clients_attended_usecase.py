from src.db.postgresql import DatabaseInterface
class DailyClientsAttendedUseCase:
    def __init__(self, db: DatabaseInterface) -> None:
        self.db = db
        
    def get_daily_attended(self,id: int):
        return self.db.fetch_one("""
    SELECT 
        date, 
        c.rut AS client_rut, 
        CONCAT(c.name, ' ', c.surname) AS client_name, 
        c.email AS client_email, 
        b.code AS booking_code, 
        b.shop_id AS shop_id
    FROM bookings b
    JOIN clients c ON c.rut = b.client_rut
    JOIN attends a ON b.code = a.booking_code
    GROUP by date, c.rut, b.code, b.shop_id
    ORDER BY date;                            
                                 
                                 """)