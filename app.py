from src.container import Container
from src.presentation.menu import Menu

def main():
    # Initialize the container and inject dependencies
    container = Container()
    container.wire(modules=[__name__])

    menu = container.menu()
    menu.display()

if __name__ == "__main__":
    main()