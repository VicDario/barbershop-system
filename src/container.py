from os import getenv
from dependency_injector import containers, providers

from .infrastructure.repositories.shop_repository import ShopRepository
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