from src.domain.repositories.voucher_repository import VoucherRepositoryInterface

class ShowSalesVouchersByShop:
    def __init__(self, voucher_repository: VoucherRepositoryInterface):
        self.repository = voucher_repository

    def execute(self):
        vouchers = self.repository.get_sales_vouchers()
        print(vouchers)