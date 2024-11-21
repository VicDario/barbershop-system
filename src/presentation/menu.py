class Menu:
    def __init__(
            self,
            lastyear_profits_usecase,
            profits_between_years_usecase,
            daily_clients_usecase,
            daily_bookings_attended_usecase,
            show_sales_vouchers_by_shops_usecase):
        self.lastyear_profits_usecase = lastyear_profits_usecase
        self.profits_between_years_usecase = profits_between_years_usecase
        self.show_sales_vouchers_by_shops_usecase = show_sales_vouchers_by_shops_usecase
        self.daily_clients_usecase = daily_clients_usecase
        self.daily_bookings_attended_usecase = daily_bookings_attended_usecase
        
    def display(self):
        while True:
            print("\n--- Sistema de Barberias y Peluquerias ---")
            print("1. Mostrar ganancias de tiendas mayores a la media en el ultimo año.")
            print("2. Mostrar ganancias de tiendas entre dos años.")
            print("3. Mostrar documentos de ventas de las tiendas.")
            print("4. Clientes atendidos el día.")
            print("5. Reservas atendidas por trabajador.")
            print("6. Salir del programa.")

            choice = input("Selecciona una opción: ")
            self.handle_selection(choice)

    def handle_selection(self, choice):
        if choice == '1':
            self.option_one()
        elif choice == '2':
            self.option_two()
        elif choice == '3':
            self.option_three()
        elif choice == '4':
            self.option_four()
        elif choice == '5':
            self.option_five()
        elif choice == '6':
            print("Saliendo...")
            exit(0)
        else:
            print("Opción invalida. Intente de nuevo.")

    def option_one(self):
        self.lastyear_profits_usecase.execute()

    def option_two(self):
        year_start = None
        year_end = None

        while year_start is None or year_end is None:
            year_start = self.__get_number("Ingrese año inicial:")
            year_end = self.__get_number("Ingrese año final:")
            if (year_start > year_end or year_start == year_end):
                print("El año fin debe ser mayor al año inicial.")
                year_end = None

        print("\n")
        self.profits_between_years_usecase.execute(year_start, year_end)

    def option_three(self):
        self.show_sales_vouchers_by_shops_usecase.execute()
        
    def option_four(self):
        self.daily_clients_usecase.execute()
        
    def option_five(self):
        self.daily_bookings_attended_usecase.execute()

    def __get_number(self, message) -> int:
        number = None
        while number is None:
            try:
                user_input = input(message)
                number = int(user_input)
            except:
                print("Ingrese un número valido")
        return number