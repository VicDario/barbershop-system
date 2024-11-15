from os import getenv
from dependency_injector import containers, providers

from .infrastructure.repositories.shop_repository import ShopRepository
from .infrastructure.repositories.sales_repository import SalesRepository
from .infrastructure.use_cases.incomes_between_years_usecase import IncomesBetweenYearsUseCase
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
    sales_repository = providers.Singleton(SalesRepository, db=postgre_database)

    incomes_between_years_usecase = providers.Singleton(IncomesBetweenYearsUseCase, sales_repository=sales_repository)