class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant

    validates :price, presence: true

    validate :price_range

    def price_range
        if (price > 30 || price < 1)
            errors.add(:price, 'Must be between 30 and 1')
        end
    end
end