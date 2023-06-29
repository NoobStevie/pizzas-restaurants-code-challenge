# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create(name: "Pizza Hut", address: "New York")
Restaurant.create(name: "Castle Pizzas", address: "Brooklyn")
Restaurant.create(name: "Boyle Hut", address: "Texas")

Pizza.create(name: "Barbeque Steak", ingredients: "Dough, Barbeque Sauce, Meat")
Pizza.create(name: "Vegetarian", ingredients: "Dough, Onions, Tomato Paste")
Pizza.create(name: "Chicken Tikka", ingredients: "Dough, Chicken, Chilli Sauce")

RestaurantPizza.create(restaurant: Restaurant.find(1), pizza: Pizza.find(1), price: 10)
RestaurantPizza.create(restaurant: Restaurant.find(1), pizza: Pizza.find(2), price: 12)
RestaurantPizza.create(restaurant: Restaurant.find(2), pizza: Pizza.find(3), price: 11)
RestaurantPizza.create(restaurant: Restaurant.find(2), pizza: Pizza.find(4), price: 13)