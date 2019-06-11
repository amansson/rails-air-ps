class Service < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :contracts
  has_many :reviews

  validates :name, :content, :price, :location, presence: true
  validates :price, numericality: { only_integer: true }
end
