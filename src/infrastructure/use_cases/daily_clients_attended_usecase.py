from tabulate import tabulate
from src.domain.repositories.client_repository import ClientRepositoryInterface

class DailyClientsAttendedUseCase:
    def __init__(self, client_repository: ClientRepositoryInterface):
        self.repository = client_repository
        
    def execute(self):
        daily_clients = self.repository.get_daily_clients_attended()
        print(f"Clientes atendidos por dia")
        headers = ["Fecha", "Rut cliente", "Nombre cliente", "Email cliente", "Código reserva", "ID tienda"]
        rows = [[daily_client["date"], daily_client["client_rut"], daily_client["client_name"], daily_client["client_email"], daily_client["booking_code"], daily_client["shop_id"]] for daily_client in daily_clients]
        print(tabulate(rows, headers, tablefmt="grid"))
