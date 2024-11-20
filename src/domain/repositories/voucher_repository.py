from abc import ABC, abstractmethod

class VoucherRepositoryInterface(ABC):
    @abstractmethod
    def get_sales_vouchers(self):
        pass
    