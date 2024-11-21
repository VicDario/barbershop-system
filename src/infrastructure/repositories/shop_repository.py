from src.db.postgresql import DatabaseInterface

class ShopRepository:
    def __init__(self, db: DatabaseInterface) -> None:
        self.db = db
    
    def get_by_id(self, id: int):
        return self.db.fetch_one("SELECT name FROM shops WHERE id=%s;", [id])