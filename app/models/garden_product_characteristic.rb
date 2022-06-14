class GardenProductCharacteristic < ApplicationRecord
  belongs_to :garden_product
  belongs_to :characteristic
  validates :garden_product_id, presence: true
  validates :characteristic_id, presence: true
end
