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
        profits_by_shop = {}

        for sale in sales_profits:
            shop_id = sale["shop_id"]
            profits_by_shop[shop_id] = { "sales_profit": sale["total_profit"], "services_profit": 0 }

        for service in services_profits:
            shop_id = sale["shop_id"]
            if shop_id not in profits_by_shop: profits_by_shop[shop_id] = { "sales_profit": 0 }
            profits_by_shop[shop_id].update({ "services_profit": service["total_profit"] })

        self.__show_profits_list(profits_by_shop)
       

    def __show_profits_list(self, profits):
        for key, value in profits.items():
            sales_profit = value["sales_profit"]
            services_profit = value["services_profit"]
            total = sales_profit + services_profit
            print(f"Id Local: {key}, Ganancias por venta de productos: {sales_profit}, Ganancias por servicios: {services_profit}, Ganancias totales: {total}")