# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

# seeding restaurants
5.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address
    )
end

# seeding pizzas
Pizza.create([
    {
        name: "Pepperoni",
        ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni",
        price: 10.99

    },
    {
        name: "Chicken Tikka",
        ingredients: "Cheese, Chillies, Onion, Garlic, Chunks of chicken",
        price: 8.49
    },
    {
        name: "Barbeque Steak",
        ingredients: "Steak, Dough, Barbeque, Tomato Sauce",
        price: 7.23
    },
    {
        name: "Veggie Pizza",
        ingredients: "Tomato, Vegetables, Dough",
        price: 6.99
    }

])

# seeding join tables pizza-restaurant
RestaurantPizza.create([
    {restaurant_id: 1, pizza_id: 1, price: rand(1..30)},
    {restaurant_id: 5, pizza_id: 2, price: rand(1..30)},
    {restaurant_id: 2, pizza_id: 3, price: rand(1..30)},
    {restaurant_id: 3, pizza_id: 4, price: rand(1..30)},
    {restaurant_id: 4, pizza_id: 1, price: rand(1..30)}
])