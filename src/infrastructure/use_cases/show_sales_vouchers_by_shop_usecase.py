from tabulate import tabulate
from src.domain.repositories.voucher_repository import VoucherRepositoryInterface

class ShowSalesVouchersByShop:
    def __init__(self, voucher_repository: VoucherRepositoryInterface):
        self.repository = voucher_repository

    def execute(self):
        vouchers = self.repository.get_sales_vouchers()
        headers = ["Número documento de venta", "Fecha", "RUT cliente", "ID tienda", "Nombre tienda", "Municipalidad", "Productos", "Precio total"]
        rows = [[voucher["number_voucher"], voucher["date"], voucher["client_rut"], voucher["shop_id"], voucher["shop_name"], voucher["community"], voucher["products_sold"], voucher["total_price"]] for voucher in vouchers]
        print(tabulate(rows, headers, tablefmt="grid"))