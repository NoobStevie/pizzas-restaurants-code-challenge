class RestaurantPizzasController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        restaurant_pizza = RestaurantPizza.all
        render.json: restaurantpizza
    end

    def show
        restaurantpizza = RestaurantPizza.find_by(id: params[:id])
        render.json: restaurantpizza
    end

    def create
        restaurantpizza = RestaurantPizza.create!(restaurant_pizza_params)
        render.json: restaurantpizza, status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def record_not_found
        render json: {error: "RestaurantPizza Not Found"}, status: :not_found
    end

    def unprocessable_entity_method entity
        render json: {error: entity.record.errors}, status: :unprocessable_entity
    end

end