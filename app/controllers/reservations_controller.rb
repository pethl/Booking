class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show edit update destroy ]

  # GET /reservations or /reservations.json
  def index
    @reservations = Reservation.all
  end
 
  # GET /reservations/1 or /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    @restaurants = Restaurant.all
  end
  
  def enquiry_check
    @reservation = Reservation.find(params[:id])
    populate the held params into object
    @reservation = Reservation.new(reservation_params)
    
    run rules test code
    @rules_test = Reservation.basicrules(@reservation)
     Rails.logger.debug("@rules_test: #{@rules_test.inspect}")
    
     unless @rules_test == "good"
      redirect_to enquiry_path, flash: { error: "Please complete all fields" }
        #flash.alert = "Please complete all fields"
            #return false
      end
    
  end

  # GET /reservations/1/edit
  def edit
    
    ([3,4].include? Date.today.wday) ? (@start_date_tomorrow = Date.today.strftime('%d-%m-%Y')) : (@start_date_tomorrow = Date.tomorrow.strftime('%d-%m-%Y'))
   
  end

  # POST /reservations or /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    Rails.logger.debug("basicr_rules_rtn : #{Reservation.basicrules(@reservation).inspect}")
    if Reservation.basicrules(@reservation)== true
    
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully created." }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  else redirect_to reservations_path
  end
    

  end

  # PATCH/PUT /reservations/1 or /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully updated." }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1 or /reservations/1.json
  def destroy
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url, notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.require(:reservation).permit(:restaurant_id, :booking_date_time, :number_of_diners, :accessible, :highchair, :name, :email, :phone, :status, :source, :cancelled_by, :cancelled_at, :notes)
    end
end
