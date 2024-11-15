from src.domain.repositories.sales_repository import SalesRepositoryInterface
from src.db.postgresql import DatabaseInterface

class SalesRepository(SalesRepositoryInterface):
    def __init__(self, db: DatabaseInterface):
        self.db = db

    def get_sales_between_years(self, year_start: int, year_end: int):
        return self.db.fetch_all("SELECT prices FROM sales_voucher WHERE date >= %s AND date <= %s;", year_start, year_end)