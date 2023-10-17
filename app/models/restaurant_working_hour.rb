class RestaurantWorkingHour < ApplicationRecord
  belongs_to :restaurant, inverse_of: :restaurant_working_hours
  belongs_to :day
end
