class Chatroom < ApplicationRecord
  has_many :messages
  validates :sender_id, presence: true
  validates :recipient_id, presence: true
end
