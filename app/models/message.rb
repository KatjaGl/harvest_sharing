class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom
  validates  :user_id, presence: true
  validates  :chatroom_id, presence: true
  validates  :content, presence: true, length: { minimum: 0, maximum: 150 }
end
