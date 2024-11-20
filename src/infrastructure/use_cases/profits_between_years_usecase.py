from src.domain.repositories.profit_repository import ProfitRepositoryInterface

class ProfitsBetweenYearsUseCase:
    def __init__(self, sales_repository: ProfitRepositoryInterface):
        self.repository = sales_repository

    def execute(self, year_start: int, year_end: int):
        results = self.repository.get_sales_between_years(year_start, year_end)
        # Logic????
        return results