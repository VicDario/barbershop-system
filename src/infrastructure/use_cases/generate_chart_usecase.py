import os
import platform
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
        plt.figure(figsize=(12, 12))
        plt.pie(
            profits,
            labels=services,
            autopct='%1.1f%%',
            startangle=140,
            textprops={'fontsize': 10},

        )
        plt.title(f"Ventas totales por servicio ({year})", fontsize=20,  y=1.05)
        plt.axis('equal')
        plt.subplots_adjust(left=0.2, right=0.8, top=0.9, bottom=0.1)
        plt.savefig(output_path, format="png", dpi=300)
        plt.close()
        print(f"Chart saved as {output_path}")
        self.__open_image(output_path)

    def __open_image(self, file_path):
        try:
            if platform.system() == "Windows":
                os.startfile(file_path)
            elif platform.system() == "Darwin":
                os.system(f"open {file_path}")
            else:
                os.system(f"xdg-open {file_path}")
        except:
            print("Error abriendo gráfico.")