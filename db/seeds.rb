# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

restaurant1 = Restaurant.create(name: "Pizza Hut", address: "New York")
restaurant2 = Restaurant.create(name: "Castle Pizzas", address: "Brooklyn")
restaurant3 = Restaurant.create(name: "Boyle Hut", address: "Texas")

pizza1 = Pizza.create(name: "Barbeque Steak", size: "Mega", ingredients: "Dough, Barbeque Sauce, Meat")
pizza2 = Pizza.create(name: "Vegetarian", size: "Medium", ingredients: "Dough, Onions, Tomato Paste")
pizza3 = Pizza.create(name: "Chicken Tikka", size: "Large", ingredients: "Dough, Chicken, Chilli Sauce")

RestaurantPizza.create(restaurant: restaurant3, pizza: pizza2, price: 15)
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza3, price: 20)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza1, price: 25)