class GardenProduct < ApplicationRecord
  belongs_to :garden
  belongs_to :product
  has_many :garden_product_characteristics
  has_many :characteristics, through: :garden_product_characteristics
  validates :product_id, presence: true
  validates :garden_id, presence: true
  validates :quantity,  presence: true, numericality: { only_integer: true }
  end
