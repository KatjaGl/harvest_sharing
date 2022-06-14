class Favorite < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  validates :garden_id, presence: true
  validates :user_id, presence: true
end
