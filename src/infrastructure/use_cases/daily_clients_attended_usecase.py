from tabulate import tabulate

class DailyClientsAttendedUseCase:
    def __init__(self, daily_client_repository):
        self.repository = daily_client_repository
        
    def execute(self):
        daily_clients = self.repository.get_daily_attended()
        print(f"Clientes atendidos el día")
        headers = ["Fecha", "Rut cliente", "Nombre cliente", "Email cliente", "Código reserva", "ID tienda"]
        rows = [[daily_client["date"], daily_client["client_rut"], daily_client["client_name"], daily_client["client_email"], daily_client["booking_code"], daily_client["shop_id"]] for daily_client in daily_clients]
        print(tabulate(rows, headers, tablefmt="grid"))
