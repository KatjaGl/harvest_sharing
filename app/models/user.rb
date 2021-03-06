class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :address, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :nickname,  presence: true
  has_many :gardens
  has_many :messages
  has_many :reviews
  has_one_attached :avatar
end
