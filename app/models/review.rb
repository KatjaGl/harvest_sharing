class Review < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  validates  :comment, presence: true, length: { minimum: 0, maximum: 150 }
  validates  :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates  :user_id, presence: true
  validates  :garden_id, presence: true
end
