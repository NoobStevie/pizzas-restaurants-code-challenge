class RestaurantWithPizzasSerializer < RestaurantSerializer
    has_many :pizzas, serializer: PizzaSerializer
end