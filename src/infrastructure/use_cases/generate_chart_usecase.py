import matplotlib.pyplot as plt
from src.domain.repositories.profit_repository import ProfitRepositoryInterface

class GenerateChartUseCase:
    def __init__(self, profit_repository: ProfitRepositoryInterface):
        self.repository = profit_repository

    def execute(self, year: int):
        data = self.repository.services_profits_by_year(year)
        services = [row['service_name'] for row in data]
        profits = [row['total_profit'] for row in data]
        output_path="chart.png"
        plt.figure(figsize=(8, 8))
        plt.pie(
            profits,
            labels=services,
            autopct='%1.1f%%',
            startangle=140,
            textprops={'fontsize': 10}
        )
        plt.title(f"Ventas totales por servicio ({year})", fontsize=14)
        plt.axis('equal')
        plt.legend(title="Servicios", loc="best")
        plt.savefig(output_path, format="png", dpi=300)
        plt.close()
        print(f"Chart saved as {output_path}")