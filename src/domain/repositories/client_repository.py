from abc import ABC, abstractmethod

class ClientRepositoryInterface(ABC):
    @abstractmethod
    def get_daily_clients_attended(self):
        pass