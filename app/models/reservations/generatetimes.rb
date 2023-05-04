module Reservations
  class Generatetimes
    
       def initialize(reservation)
          @restaurant_id = reservation.restaurant_id
          @booking_date_time = reservation.booking_date_time
          opening_hours = OpeningHour.where('day = ? AND restaurant_id = ?', @booking_date_time.wday, @restaurant_id).first
          @sittings = opening_hours.sittings
        end
        
    	# Get Array of dining Times from Sitting records - 30 mins 
        def call
          available_times = Array.new
           @sittings.each do |sitting|
            
            (sitting.start_time.to_i..sitting.end_time.to_i).step(30.minutes).each do |time|
              available_times<<Time.at(time)
              
            end           
          end
           return available_times
        end
  end
end