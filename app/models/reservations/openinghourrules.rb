module Reservations
  class Openinghourrules
    
       def initialize(reservation)
         @booking_date_time = reservation.booking_date_time
         @number_of_diners = reservation.number_of_diners
         @rdetails = Rdetail.where(:restaurant_id==reservation.restaurant_id).first
         @closed_days = OpeningHour.where(open: false).pluck(:day)
         @opening_hour = OpeningHour.where(:day => @booking_date_time.wday)
         @sittings = Sitting.where(:opening_hour_id => @opening_hour.first.id)
        end
        
    	# the Opening Hour Rules 
        def call
          Rails.logger.debug("sittings count : #{@sittings.count}")
          # if restaurant is closed on this day 
          if @closed_days.include?(@booking_date_time.wday)
            return "Restaurant is closed on this day"
         
          # if there are no sittings for the restaurant on this day 
          elsif @sittings.count == 0
            return "No sittings available on this day."
          
          # code here for ourside sitting hours 
         #  end
          #  return "No sittings available at this day."
          else
              return true
        end
      end
        
  end
end