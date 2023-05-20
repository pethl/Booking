module Reservations
  class Basicrules
    
       def initialize(reservation)
         @booking_date_time = reservation.booking_date_time
         @number_of_diners = reservation.number_of_diners
         @exemptions = Exemption.pluck(:exempt_dat)
         @rdetails = Rdetail.where(:restaurant_id==reservation.restaurant_id).first
        end
        
    	# the Basic Rules 
        def call
           Rails.logger.debug("IN BASIC RULES METHOD")
          
          if @booking_date_time.blank?
            return "Booking Date must be entered"
            
          elsif @booking_date_time < Date.today
            return "Booking Date cannot be in the past"
            
          elsif @booking_date_time.to_date == DateTime.current.to_date
             return "Booking Date cannot be made for today"
             
          elsif @booking_date_time.to_date > DateTime.now.next_month(2).end_of_month.to_date
              return "Requested date is outside bookable period"
              
          elsif @exemptions.include?(@booking_date_time)
            return "No bookings accepted for this date, restaurant closed on #{@booking_date_time.strftime("%d %B, %Y")}"
          
          elsif @number_of_diners > @rdetails[:max_booking]
           return "Unable to book, maximum table size is #{@rdetails[:max_booking]}"
           else 
              return true
              
          end
        end
  end
end