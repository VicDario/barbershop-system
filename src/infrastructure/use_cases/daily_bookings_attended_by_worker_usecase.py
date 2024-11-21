from src.db.postgresql import DatabaseInterface
pass

class DailyBookingsAttendedByWorkerUseCase:
    def __init__(self, db: DatabaseInterface) -> None:
        self.db = db
        
    def get_daily_attended(self,id: int):
        return self.db.fetch_one("SELECT rut, name, surname, email, date, shop_id, booking_code, service_code FROM bookings, clients, attends order by date")