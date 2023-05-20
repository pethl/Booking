class PagesController < ApplicationController
  before_action :authenticate_user!
 # before_action :set_enquiry, only: %i[ reservation, time_set ]
 # before_action :set_reservation, only: %i[ get_times ]
  
  def welcome
    @restaurants = Restaurant.all
  end
  
  def reservation
    @enquiry = Enquiry.new
     @restaurants = Restaurant.all
  end
  
  def time_set   
    #get input params from 1st screen
    @enquiry = Enquiry.new(enquiry_params)
   
    #check rules then generate times
    if ((Reservation.basicrules(@enquiry)== true) && (Reservation.openinghourrules(@enquiry)== true))
      @available_times=Reservation.generatetimes(@enquiry)
     
      redirect_to :controller => "pages", :action => "picktime", :restaurant_id => @enquiry.restaurant_id, :booking_date_time => @enquiry.booking_date_time, :number_of_diners=> @enquiry.number_of_diners, :available_times => @available_times
     # redirect_to pages_picktime_path(enquiry) - refactor here, must be a way to pass object
    end
  end
  
  def picktime
    @restaurant = Restaurant.where(id: params[:restaurant_id]).first
    @booking_date_time = params[:booking_date_time].to_date
    @number_of_diners = params[:number_of_diners].to_i
    @available_times = params[:available_times]
  end
  
  def mergetime
    booking_date_time = params[:booking_date_time]
    Rails.logger.debug("booking_date_time : #{booking_date_time.inspect}")
  
     @reservation = Reservation.new(enquiry_params)
    
   # redirect_to :controller => "pages", :action => "picktime", :restaurant_id => @enquiry.restaurant_id, :booking_date_time => @enquiry.booking_date_time, :number_of_diners=> @enquiry.number_of_diners, :available_times => @available_times
   edit_reservation_path(@reservation)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
   #   @enquiry = Enq.find(params[:id])
    end
    
    def enquiry_params
        params.require(:enquiry).permit(:restaurant_id, :number_of_diners, :booking_date_time, :time)
    end
    
end
