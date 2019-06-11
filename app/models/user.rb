class User < ApplicationRecord
  has_many :contracts
  has_many :services
  has_many :booked_services, through: :contracts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
