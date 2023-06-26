puts "start seeding..."
PIZZAS = ["Neapolitan Pizza", "Chicago Pizza", "New York-Style Pizza", " Sicilian Pizza", "Greek Pizza"]
INGREDIENTS = [ "tomatoes", "garlic", "oregano","extra virgin olive oil", "sausage", "pepperoni", "onion", "mushrooms","green peppers"]
PRICE = [10,15,20,25,30]

# restaurants
5.times do
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address)
    Pizza.create(name: PIZZAS.uniq.sample, ingredients: INGREDIENTS.uniq.sample(3))
end

pizzas = Pizza.all
restaurants = Restaurant.all

pizza = pizzas.sample
restaurant = restaurants.sample
5.times do
    RestaurantPizza.create(price: PRICE.sample, restaurant_id: restaurant.id,  pizza_id: pizza.id)
end
puts "done seeding"