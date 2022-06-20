class Product < ApplicationRecord
  has_many :garden_products
  has_many :gardens, through: :garden_products
  validates :category, presence: true
  validates :name, presence: true
  has_many_attached :photos
end
