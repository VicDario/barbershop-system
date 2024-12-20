from src.domain.repositories.voucher_repository import VoucherRepositoryInterface
from src.db.postgresql import DatabaseInterface

class VoucherRepository(VoucherRepositoryInterface):
    def __init__(self, db: DatabaseInterface) -> None:
        self.db = db
    
    def get_sales_vouchers(self):
        return self.db.fetch_all("""
            SELECT 
                sv.number_voucher,
                sv.date,
                sv.client_rut,
                sv.shop_id,
                s.name AS shop_name,
                s.community,
                STRING_AGG(p.name || ' (Cantidad: ' || si.number || ')', '\n') AS products_sold,
                SUM((p.price * si.number) - si.discount) AS total_price
            FROM sales_vouchers sv
            JOIN sales_in si ON sv.number_voucher = si.number_voucher
            JOIN products p ON si.product_code = p.code
            JOIN shops s ON sv.shop_id = s.id
            GROUP BY sv.number_voucher, sv.date, sv.client_rut, sv.shop_id, s.name, s.community
            ORDER BY sv.date DESC;
        """)