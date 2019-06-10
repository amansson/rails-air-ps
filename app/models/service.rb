class Service < ApplicationRecord
  belongs_to :category, :user
  has_many :contracts, :reviews

  validates :name, :content, :price, :location, presences: :true
  validates :rating, numericality: { only_integer: true }
end
