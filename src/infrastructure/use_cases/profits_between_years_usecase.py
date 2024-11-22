from tabulate import tabulate
from src.domain.repositories.profit_repository import ProfitRepositoryInterface

class ProfitsBetweenYearsUseCase:
    def __init__(self, profit_repository: ProfitRepositoryInterface):
        self.repository = profit_repository

    def execute(self, year_start: int, year_end: int):
        profits = self.repository.get_shops_profits_between_years(year_start, year_end)
        print(f"Ganancias entre los años {year_start} y {year_end}")
        headers = ["ID tienda", "Nombre tienda", "Ganancias servicios", "Ganancias ventas", "Ganancias totales"]
        rows = [[profit["shop_id"], profit["name"], f"{profit["services_profit"]:.0f}", f"{profit["sales_profit"]:.0f}", f"{profit["profit"]:.0f}"] for profit in profits]
        print(tabulate(rows, headers, tablefmt="grid"))