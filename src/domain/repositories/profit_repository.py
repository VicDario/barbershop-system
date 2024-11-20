from abc import ABC, abstractmethod
from datetime import datetime

class ProfitRepositoryInterface(ABC):
    @abstractmethod
    def get_profits_from_sales_since_date(self, date: datetime):
        pass

    @abstractmethod
    def get_profits_from_services_since_date(self, date: datetime):
        pass

    @abstractmethod
    def get_shops_profits_between_years(self, year_start: int, year_end: int):
        pass
    

    