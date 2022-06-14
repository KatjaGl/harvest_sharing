class Characteristic < ApplicationRecord
  has_many :garden_product_characteristics
  has_many :garden_products, through: :garden_product_characteristics
  validates :name, presence: true
end
