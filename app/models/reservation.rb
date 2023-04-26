class Reservation < ApplicationRecord
     belongs_to :restaurant
     
     validates :restaurant_id, presence: true 
     validates :booking_date_time, presence: true 
     validates :number_of_diners, presence: true  
 
     
     def self.basicrules(reservation)
       Reservations::Basicrules.new(reservation).call
     end
     
    
end
