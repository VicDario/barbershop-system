from src.domain.repositories.profit_repository import ProfitRepositoryInterface

class ProfitsBetweenYearsUseCase:
    def __init__(self, profit_repository: ProfitRepositoryInterface):
        self.repository = profit_repository

    def execute(self, year_start: int, year_end: int):
        profits = self.repository.get_shops_profits_between_years(year_start, year_end)
        print(f"Ganancias entre los años {year_start} y {year_end}")
        print("ID tienda | Nombre tienda | Ganancias en período")
        for profit in profits:
            print(f"{str(profit["shop_id"]).ljust(9, ' ')} | {profit["name"].ljust(7, ' ')} | {profit["profit"]}")