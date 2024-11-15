from abc import ABC, abstractmethod

class SalesRepositoryInterface(ABC):
    @abstractmethod
    def get_sales_between_years(self, year_start: int, year_end: int):
        pass