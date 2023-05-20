class Reservation < ApplicationRecord
     belongs_to :restaurant
     
     validates :restaurant_id, presence: true 
     validates :booking_date_time, presence: true 
     validates :number_of_diners, presence: true  
     validates :name, presence: true  
     
     def self.basicrules(reservation)
       Reservations::Basicrules.new(reservation).call
     end
     
     def self.openinghourrules(reservation)
       Reservations::Openinghourrules.new(reservation).call
     end
     
     def self.generatetimes(reservation)
       Reservations::Generatetimes.new(reservation).call
     end
     
     def to_hash
        hash = {}; self.attributes.each { |k,v| hash[k] = v }
        return hash
      end
        
end
