class Review < ApplicationRecord
  belongs_to :service
  belongs_to :user

  validates :rating, presence: :true
  validates :rating, numericality: { only_integer: true }
end
