class PagesController < ApplicationController
  before_action :authenticate_user!
 # before_action :set_reservation, only: %i[ get_times ]
  
  def welcome
    @restaurants = Restaurant.all
  end
  
  def reservation
    @reservation = Reservation.new
    @restaurants = Restaurant.all
  end
  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end
  
end
