class Garden < ApplicationRecord
  has_many :reviews
  belongs_to :user
  has_many :garden_products
  has_many :products, through: :garden_products
  validates :name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
  has_one_attached :photo

  # include PgSearch::Model
  # multisearchable :against => [:name, product_name]
  # belongs_to :product
  # delegate :name, :to => :product, :prefix => true

  # pg_search_scope :product_search, associated_against: { product: [:name] }
  # A UTILISER SI ON  A UN ONE TO MANY (2 tabs reliées directement entre elles )

end
