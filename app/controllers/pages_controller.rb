class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def welcome
  end
  
  def reservation
    @reservation = Reservation.new
    @restaurants = Restaurant.all
  end

  
end
