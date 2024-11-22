from tabulate import tabulate
from datetime import datetime
from src.domain.repositories.profit_repository import ProfitRepositoryInterface

class LastYearProfitsUseCase:
    def __init__(self, profit_repository: ProfitRepositoryInterface) -> None:
        self.profit_repository = profit_repository

    def execute(self):
        current_date = datetime.now()
        one_year_less = current_date.replace(year=current_date.year - 1)
        profits = self.profit_repository.get_shops_profits_higher_than_average_since_date(one_year_less)

        print(f"Ganancias de tiendas mayores a la media del ultimo año")
        headers = ["ID tienda", "Nombre tienda", "Ganancias servicios", "Ganancias ventas", "Ganancias totales"]
        rows = [[profit["shop_id"], profit["name"], f"{profit['services_profit']:.0f}", f"{profit['sales_profit']:.0f}", f"{profit['profit']:.0f}"] for profit in profits]
        print(tabulate(rows, headers, tablefmt="grid"))