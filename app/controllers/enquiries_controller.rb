class EnquiriesController < ApplicationController
  
  def reservation
    @enquiry = Enquiry.new
    @restaurants = Restaurant.all
  end
  
  def time_set   
    #get input params from 1st screen
    enquiry = Enquiry.new(enquiry_params)
    
    #check rules then generate times
    if ((Reservation.basicrules(enquiry)== true) && (Reservation.openinghourrules(enquiry)== true))
      @available_times=Reservation.generatetimes(enquiry)
      new_enquiry = enquiry.to_hash()
      redirect_to :controller => "enquiries", :action => "picktime", :enquiry => new_enquiry, :available_times => @available_times
    else
      #TBD NEEDS CODE
    end
  end
  
  def picktime
    enquiry = params[:enquiry]
    @enquiry = Enquiry.new
    @enquiry.booking_date = enquiry[:booking_date]
    @enquiry.number_of_diners = enquiry[:number_of_diners]
    @enquiry.restaurant_id = enquiry[:restaurant_id]
    @restaurant = Restaurant.where(:id=> @enquiry.restaurant_id).first
    @available_times = params[:available_times]
  end
  
  def mergetime
    enquiry = params[:enquiry]
    booking_date = (enquiry[:booking_date]).to_date
    booking_time = (params[:booking_time]).to_time
    booking_date_time = DateTime.parse([ booking_date, booking_time ].join(' '))
    reservation = Reservation.new(:booking_date_time => booking_date_time, :restaurant_id => enquiry[:restaurant_id], :number_of_diners => enquiry[:number_of_diners])
    new_reservation = reservation.to_hash()
    
    redirect_to customer_details_reservations_path(:reservation =>new_reservation)
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
   #   @enquiry = Enq.find(params[:id])
    end
    
    def enquiry_params
        params.require(:enquiry).permit(:restaurant_id, :number_of_diners, :booking_date, :booking_time)
    end
   
end