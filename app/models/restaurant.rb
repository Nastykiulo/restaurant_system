class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :restaurant_working_hours, inverse_of: :restaurant, dependent: :destroy
  accepts_nested_attributes_for :restaurant_working_hours, allow_destroy: true
  has_one_attached :menu
end
