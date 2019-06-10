class Service < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :contracts
  has_many :reviews

  validates :name, :content, :price, :location, presences: :true
  validates :rating, numericality: { only_integer: true }
end
