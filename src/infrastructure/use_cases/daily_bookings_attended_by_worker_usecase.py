from tabulate import tabulate

class DailyBookingsAttendedByWorkerUseCase:
    def __init__(self, daily_bookings_attended_by_worker):
        self.repository = daily_bookings_attended_by_worker
        
    def execute(self):
        daily_booking = self.repository.get_daily_booking_employees()
        print(f"Reservas atendidas por trabajador")
        headers = ["Fecha", "Rut empleado", "Nombre empleado", "ID tienda", "Total reservas"]
        rows = [[daily_booking["booking_date"], daily_booking["employee_rut"], daily_booking["employee_name"], daily_booking["shop_id"], daily_booking["total_bookings"]] for daily_booking in daily_booking]
        print(tabulate(rows, headers, tablefmt="grid")) 
      