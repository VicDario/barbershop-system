from datetime import datetime
from src.domain.repositories.profit_repository import ProfitRepositoryInterface
from src.db.postgresql import DatabaseInterface

class ProfitRepository(ProfitRepositoryInterface):
    def __init__(self, db: DatabaseInterface):
        self.db = db

    def get_shops_profits_higher_than_average_since_date(self, date: datetime):
        date_param = f"{date.year}-{date.month}-{date.day}"
        return self.db.fetch_all("""
            WITH profits AS (
                SELECT 
                    shop_id,
                    SUM(sales_profit) AS sales_profit,
                    SUM(services_profit) AS services_profit,
                    SUM(sales_profit + services_profit) AS profit
                FROM (
                    SELECT 
                        sv.shop_id,
                        SUM((p.price - si.discount) * si.number) AS sales_profit,
                        0 as services_profit
                    FROM sales_vouchers sv
                    JOIN sales_in si ON sv.number_voucher = si.number_voucher
                    JOIN products p ON si.product_code = p.code
                    WHERE sv.date >= %s
                    GROUP BY sv.shop_id

                    UNION ALL

                    SELECT 
                        b.shop_id,
                        0 as sales_profit,
                        SUM(s.base_price - COALESCE(d.mount, 0)) AS services_profit
                    FROM bookings b
                    LEFT JOIN payment_documents pd ON b.code = pd.booking_code
                    LEFT JOIN discounts d ON pd.document_number = d.payment_document_number
                    LEFT JOIN attends a ON b.code = a.booking_code
                    LEFT JOIN services s ON a.service_code = s.code
                    WHERE b.date >= %s
                    GROUP BY b.shop_id
                ) AS combined_data
                GROUP BY shop_id
            )
            SELECT 
                p.shop_id,
                sh.name,
                p.sales_profit,
                p.services_profit,
                p.profit
            FROM profits p
            JOIN shops sh ON sh.id = p.shop_id
            GROUP BY shop_id, name, sales_profit, services_profit, profit
            HAVING profit > (SELECT AVG(profit) FROM profits)
            ORDER BY profit DESC;
        """, (date_param, date_param))
    
    def get_shops_profits_between_years(self, year_start: int, year_end: int):
        return self.db.fetch_all("""
            SELECT
                shop_id,
                sh.name,
                SUM(sales_profit) AS sales_profit,
                SUM(services_profit) AS services_profit,
                SUM(sales_profit + services_profit) as profit
            FROM (
                SELECT 
                    sv.shop_id,
                    SUM((p.price - si.discount) * si.number) AS sales_profit,
                    0 as services_profit
                FROM sales_vouchers sv
                JOIN sales_in si ON sv.number_voucher = si.number_voucher
                JOIN products p ON si.product_code = p.code
                WHERE EXTRACT(YEAR FROM sv.date) between %s AND %s
                GROUP BY sv.shop_id

                UNION ALL

                SELECT
                    b.shop_id,
                    0 AS sales_profit,
                    SUM(s.base_price - COALESCE(d.mount, 0)) AS services_profit
                FROM bookings b
                LEFT JOIN payment_documents pd ON b.code = pd.booking_code
                LEFT JOIN discounts d ON pd.document_number = d.payment_document_number
                LEFT JOIN attends a ON b.code = a.booking_code
                LEFT JOIN services s ON a.service_code = s.code
                WHERE EXTRACT(YEAR FROM b.date) between %s AND %s
                GROUP BY b.shop_id
            ) AS combined_profits
            JOIN shops sh on sh.id = shop_id
            GROUP BY shop_id, sh.name
            ORDER BY shop_id;
        """, (year_start, year_end, year_start, year_end))
