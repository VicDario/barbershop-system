from src.db.postgresql import DatabaseInterface
from src.domain.repositories.booking_repository import BookingRepositoryInterface

class BookingRepository(BookingRepositoryInterface):
    def __init__(self, db: DatabaseInterface):
        self.db = db
        
    def get_daily_booking_attended_by_employees(self):
        return self.db.fetch_all("""
            SELECT 
                b.date::DATE AS booking_date, 
                e.rut AS employee_rut, 
                CONCAT(e.name, ' ', e.surname) AS employee_name,
                e.shop_id,
                COUNT(DISTINCT b.code) AS total_bookings
            FROM bookings b
            JOIN attends a ON b.code = a.booking_code
            JOIN employees e ON e.rut = a.employee_rut
            GROUP BY b.date::DATE, e.rut, e.name, e.surname, e.shop_id
            ORDER BY b.date::DATE;
        """)