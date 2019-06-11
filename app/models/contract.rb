class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :service
  
  validates :start_date, :end_date, :confirmed, presence: true
  
  # TODO: Add method with "callback" for checking end date is not before start date
end
