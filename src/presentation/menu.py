class Menu:
    def __init__(
            self,
            lastyear_profits_usecase):
        self.lastyear_profits_usecase = lastyear_profits_usecase

    def display(self):
        while True:
            print("\n--- Sistema de Barberias y Peluquerias ---")
            print("1. Mostrar ganancias de ultimo año")
            print("2. Mostrar ganancias de entre dos fechas")
            print("3. Salir del programa")

            choice = input("Select an option: ")
            self.handle_selection(choice)

    def handle_selection(self, choice):
        print('\n')
        if choice == '1':
            self.lastyear_profits_usecase.execute()
        elif choice == '2':
            print("Appointment booked successfully.")
        elif choice == '3':
            print("Exiting the system.")
            exit(0)
        else:
            print("Invalid choice. Please try again.")