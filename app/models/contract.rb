class Contract < ApplicationRecord
  belongs_to :user, :service
  
  validates :start_date, :end_date, :confirmed, precenses: :true
  
  # TODO: Add method with "callback" for checking end date is not before start date
end
