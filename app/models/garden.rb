class Garden < ApplicationRecord
  has_many :reviews
  belongs_to :user
  has_many :garden_products
  has_many :products, through: :garden_products
  validates :name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
end
