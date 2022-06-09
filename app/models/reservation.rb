class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  def stay_day 
    (end_day - start_day).to_i / 86400 * person_number
  end
  
end
