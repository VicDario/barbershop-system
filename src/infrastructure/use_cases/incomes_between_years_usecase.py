from src.domain.repositories.sales_repository import SalesRepositoryInterface

class IncomesBetweenYearsUseCase:
    def __init__(self, sales_repository: SalesRepositoryInterface):
        self.repository = sales_repository

    def execute(self, year_start: int, year_end: int):
        results = self.repository.get_sales_between_years(year_start, year_end)
        # Logic????
        return results