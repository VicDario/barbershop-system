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
        print("ID tienda | Nombre tienda | Ganancias en período")
        for profit in profits:
            print(f"{str(profit["shop_id"]).ljust(9, ' ')} | {profit["name"].ljust(7, ' ')} | {profit["profit"]}")