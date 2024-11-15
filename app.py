from src.container import Container

# Initialize the container and inject dependencies
container = Container()
container.wire(modules=[__name__])

usecase = container.lastyear_profits_usecase()
result = usecase.execute()