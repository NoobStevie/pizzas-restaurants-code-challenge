class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants, each_serializer: RestaurantSerializer
    end

    # GET restaurant/:id

    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            render json: restaurant, serializer: RestaurantWithPizzaSerializer
        else
            render json: { error: "Restaurant not found" }, status: :not_found
        end
    end

    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            restaurant.destroy
            head :no_content
        else
            render json: { error: "Restaurant does not exist" }, status: :not_found
        end
    end
end