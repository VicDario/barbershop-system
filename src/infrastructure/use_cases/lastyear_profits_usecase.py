from datetime import datetime
from src.domain.repositories.profit_repository import ProfitRepositoryInterface

class LastYearProfitsUseCase:
    def __init__(self, profit_repository: ProfitRepositoryInterface) -> None:
        self.profit_repository = profit_repository

    def execute(self):
        current_date = datetime.now()
        one_year_less = current_date.replace(year=current_date.year - 1)
        sales_profits = self.profit_repository.get_profits_from_sales_since_date(one_year_less)
        services_profits = self.profit_repository.get_profits_from_services_since_date(one_year_less)
        merged_profits = {}

        for sale in sales_profits:
            shop_id = sale["shop_id"]
            merged_profits[shop_id] = { "sales_profit": sale["total_profit"], "services_profit": 0 }

        for service in services_profits:
            shop_id = sale["shop_id"]
            if shop_id not in merged_profits: merged_profits[shop_id] = { "sales_profit": 0 }
            merged_profits[shop_id].update({ "services_profit": service["total_profit"] })

        for key, value in merged_profits.items():
            sales_profit = value["sales_profit"]
            services_profit = value["services_profit"]
            total = sales_profit + services_profit
            print(f"Id Local: {key}, Ganancias por venta de productos: {sales_profit}, Ganancias por servicios: {services_profit}, Ganancias totales: {total}")
            