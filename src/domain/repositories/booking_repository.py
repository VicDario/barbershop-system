from abc import ABC, abstractmethod

class BookingRepositoryInterface(ABC):
    @abstractmethod
    def get_daily_booking_attended_by_employees(self):
        pass