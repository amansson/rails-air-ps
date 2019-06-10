class Review < ApplicationRecord
  belongs_to :service, :user

  validates :rating, presence: :true
  validates :rating, numericality: { only_integer: true }
end
