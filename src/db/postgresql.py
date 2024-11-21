from abc import ABC, abstractmethod
from contextlib import contextmanager
from dataclasses import dataclass
from typing import Any, Generator, List, Optional
import psycopg
from psycopg.rows import dict_row

@dataclass
class DatabaseConfig:
    host: str
    port: int
    database: str
    user: str
    password: str

    def get_connection_string(self) -> str:
        return f"postgresql://{self.user}:{self.password}@{self.host}:{self.port}/{self.database}"

class DatabaseInterface(ABC):
    @abstractmethod
    def connect(self) -> None:
        pass
    
    @abstractmethod
    def disconnect(self) -> None:
        pass
    
    @abstractmethod
    @contextmanager
    def get_cursor(self) -> Generator[Any, None, None]:
        pass
    
    @abstractmethod
    def execute(self, query: str, params: tuple = None) -> None:
        pass
    
    @abstractmethod
    def fetch_one(self, query: str, params: tuple = None) -> Optional[dict]:
        pass
    
    @abstractmethod
    def fetch_all(self, query: str, params: tuple = None) -> List[dict]:
        pass

    @abstractmethod
    def call_procedure(self, procedure_name: str, params: tuple = (), fetch_cursor: Optional[str] = None) -> List[dict]:
        pass

class PostgresDatabase(DatabaseInterface):
    def __init__(self, config: DatabaseConfig):
        self.config = config
        self._conn = None
    
    def connect(self) -> None:
        """Establish database connection"""
        if not self._conn or self._conn.closed:
            self._conn = psycopg.connect(
                self.config.get_connection_string(),
                row_factory=dict_row
            )
    
    def disconnect(self) -> None:
        """Close database connection"""
        if self._conn and not self._conn.closed:
            self._conn.close()
            self._conn = None
    
    @contextmanager
    def get_cursor(self) -> Generator[psycopg.Cursor, None, None]:
        """Get database cursor with automatic connection management"""
        if not self._conn or self._conn.closed:
            self.connect()
        
        try:
            with self._conn.cursor() as cursor:
                yield cursor
                self._conn.commit()
        except Exception as e:
            self._conn.rollback()
            raise e
    
    def execute(self, query: str, params: tuple = None) -> None:
        """Execute a query without returning results"""
        with self.get_cursor() as cursor:
            cursor.execute(query, params)
    
    def fetch_one(self, query: str, params: tuple = None) -> Optional[dict]:
        """Execute a query and return one result"""
        with self.get_cursor() as cursor:
            cursor.execute(query, params)
            return cursor.fetchone()
    
    def fetch_all(self, query: str, params: tuple = None) -> List[dict]:
        """Execute a query and return all results"""
        with self.get_cursor() as cursor:
            cursor.execute(query, params)
            return cursor.fetchall()
    
    def call_procedure(self, procedure_name: str, params: tuple = (), fetch_cursor: Optional[str] = None) -> List[dict]:
        with self.get_cursor() as cursor:
            # Construct the CALL statement
            placeholders = ", ".join(["%s"] * len(params))
            call_query = f"CALL {procedure_name}({placeholders})"
            cursor.execute(call_query, params)

            # Fetch from the cursor if specified
            if fetch_cursor:
                cursor.execute(f"FETCH ALL IN {fetch_cursor};")
                return cursor.fetchall()
        return []