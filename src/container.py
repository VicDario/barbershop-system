from os import getenv
from dependency_injector import containers, providers

from .presentation.menu import Menu

from .infrastructure.repositories.shop_repository import ShopRepository
from .infrastructure.repositories.profit_repository import ProfitRepository
from .infrastructure.repositories.voucher_repository import VoucherRepository
from .infrastructure.repositories.daily_clients_attended import DailyClientsAttendedRepository
from .infrastructure.repositories.daily_bookings_attended_by_worker import DailyBookingForEmployeesRepository

from .infrastructure.use_cases.profits_between_years_usecase import ProfitsBetweenYearsUseCase
from .infrastructure.use_cases.lastyear_profits_usecase import LastYearProfitsUseCase
from .infrastructure.use_cases.show_sales_vouchers_by_shop_usecase import ShowSalesVouchersByShop
from .infrastructure.use_cases.daily_clients_attended_usecase import DailyClientsAttendedUseCase
from .infrastructure.use_cases.daily_bookings_attended_by_worker_usecase import DailyBookingsAttendedByWorkerUseCase
from .infrastructure.use_cases.generate_chart_usecase import GenerateChartUseCase

from .db.postgresql import DatabaseConfig, PostgresDatabase
from dotenv import load_dotenv

load_dotenv()

class Container(containers.DeclarativeContainer):

    db_config = providers.Singleton(
        DatabaseConfig,
        host = getenv("DB_HOST"),
        port= int(getenv("DB_PORT")),
        database = getenv("DB_NAME"),
        user = getenv("DB_USER"),
        password = getenv("DB_PASSWORD")
    )

    postgre_database = providers.Singleton(PostgresDatabase, config=db_config)

    shop_repository = providers.Singleton(ShopRepository, db=postgre_database)
    profit_repository = providers.Singleton(ProfitRepository, db=postgre_database)
    voucher_repository = providers.Singleton(VoucherRepository, db=postgre_database)
    daily_client_repository = providers.Singleton(DailyClientsAttendedRepository, db=postgre_database)
    daily_bookings_attended_by_worker = providers.Singleton(DailyBookingForEmployeesRepository, db=postgre_database)

    lastyear_profits_usecase = providers.Singleton(LastYearProfitsUseCase, profit_repository=profit_repository)
    profits_between_years_usecase = providers.Singleton(ProfitsBetweenYearsUseCase, profit_repository=profit_repository)
    show_sales_vouchers_by_shops_usecase = providers.Singleton(ShowSalesVouchersByShop, voucher_repository=voucher_repository)
    daily_client_usecase = providers.Singleton(DailyClientsAttendedUseCase, daily_client_repository=daily_client_repository)
    daily_bookings_attended_usecase = providers.Singleton(DailyBookingsAttendedByWorkerUseCase, daily_bookings_attended_by_worker=daily_bookings_attended_by_worker)
    generate_chart_usecase = providers.Singleton(GenerateChartUseCase, profit_repository=profit_repository)
    
    menu = providers.Factory(
        Menu,
        lastyear_profits_usecase=lastyear_profits_usecase,
        profits_between_years_usecase=profits_between_years_usecase,
        show_sales_vouchers_by_shops_usecase=show_sales_vouchers_by_shops_usecase,
        daily_client_usecase=daily_client_usecase,
        daily_bookings_attended_usecase=daily_bookings_attended_usecase,
        generate_chart_usecase=generate_chart_usecase
    )