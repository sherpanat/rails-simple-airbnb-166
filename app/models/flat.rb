class Flat < ApplicationRecord
  validates :name, presence: true
  validates :description, length: { maximum: 1000,
                          too_long: "%{count} characters is the maximum allowed" }
  validates :address, presence: true
  validates :price_per_night, presence: true, numericality: { only_integer: true }
  validates :number_of_guests, numericality: { only_integer: true, less_than: 15 }
end
