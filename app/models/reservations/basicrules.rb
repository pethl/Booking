module Reservations
  class Basicrules
    
       def initialize(reservation)
              @booking_date_time = reservation.booking_date_time
              @number_of_diners = reservation.number_of_diners
        end
        
    	# call the function 
        def call
          
          if @booking_date_time.blank?
            return "Booking Date must be entered"
          elsif @booking_date_time < Date.today
            Rails.logger.debug("@booking_date : #{@booking_date_time.inspect}")
            return "Booking Date must be entered later than today"
             
            else
            # if @number_of_diners.nil?
#             return "Please enter number of diners for booking"
#           else
Rails.logger.debug("int he else: #{@booking_date_time.inspect}")
              return true
              
          end
        end
  end
end