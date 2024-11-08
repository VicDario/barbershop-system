from src.container import Container

# Initialize the container and inject dependencies
container = Container()
container.wire(modules=[__name__])

shop_repo = container.shop_repository()
result = shop_repo.get_by_id(5200)
print(result)