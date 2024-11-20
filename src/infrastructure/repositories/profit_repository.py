from datetime import datetime
from src.domain.repositories.profit_repository import ProfitRepositoryInterface
from src.db.postgresql import DatabaseInterface

class ProfitRepository(ProfitRepositoryInterface):
    def __init__(self, db: DatabaseInterface):
        self.db = db

    def get_profits_from_sales_since_date(self, date: datetime):
        date_param = f"{date.year}-{date.month}-{date.day}"
        return self.db.fetch_all("""
            SELECT 
                sv.shop_id,
                SUM((p.price - si.discount) * si.number) AS total_profit
            FROM sales_vouchers sv
            JOIN sales_in si ON sv.number_voucher = si.number_voucher
            JOIN productS p ON si.product_code = p.code
            WHERE sv.date > %s
            GROUP BY sv.shop_id
            ORDER BY shop_id;
        """, (date_param,))

    def get_profits_from_services_since_date(self, date: datetime):
        date_param = f"{date.year}-{date.month}-{date.day}"
        return self.db.fetch_all("""
            SELECT
                b.shop_id,
                SUM(s.base_price - COALESCE(d.mount, 0)) AS total_profit
            FROM bookings b
            LEFT JOIN payment_documents pd ON b.code = pd.booking_code
            LEFT JOIN discounts d ON pd.document_number = d.payment_document_number
            LEFT JOIN attends a ON b.code = a.booking_code
            LEFT JOIN services s ON a.service_code = s.code
            WHERE b.date > %s
            GROUP BY b.shop_id
            ORDER BY shop_id;
        """, (date_param,))

    def get_profits_from_sales_between_years(self, year_start: int, year_end: int):
        pass
    
    def get_profits_from_services_between_years(self, year_start: int, year_end: int):
        pass