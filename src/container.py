from os import getenv
from dependency_injector import containers, providers

from .infrastructure.repositories.shop_repository import ShopRepository
from .infrastructure.repositories.profit_repository import ProfitRepository

from .infrastructure.use_cases.profits_between_years_usecase import ProfitsBetweenYearsUseCase
from .infrastructure.use_cases.lastyear_profits_usecase import LastYearProfitsUseCase

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

    lastyear_profits_usecase = providers.Singleton(LastYearProfitsUseCase, profit_repository=profit_repository)
    profits_between_years_usecase = providers.Singleton(ProfitsBetweenYearsUseCase, profit_repository=profit_repository)