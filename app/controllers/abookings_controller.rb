class AbookingsController < ApplicationController
  before_action :set_abooking, only: %i[ show edit update destroy ]

  # GET /abookings or /abookings.json
  def index
    @abookings = Abooking.all
  end

  # GET /abookings/1 or /abookings/1.json
  def show
  end

  # GET /abookings/new
  def new
    @abooking = Abooking.new
  end

  # GET /abookings/1/edit
  def edit
  end

  # POST /abookings or /abookings.json
  def create
    @abooking = Abooking.new(abooking_params)

    respond_to do |format|
      if @abooking.save
        format.html { redirect_to abooking_url(@abooking), notice: "Abooking was successfully created." }
        format.json { render :show, status: :created, location: @abooking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abookings/1 or /abookings/1.json
  def update
    respond_to do |format|
      if @abooking.update(abooking_params)
        format.html { redirect_to abooking_url(@abooking), notice: "Abooking was successfully updated." }
        format.json { render :show, status: :ok, location: @abooking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abookings/1 or /abookings/1.json
  def destroy
    @abooking.destroy

    respond_to do |format|
      format.html { redirect_to abookings_url, notice: "Abooking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abooking
      @abooking = Abooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abooking_params
      params.require(:abooking).permit(:restaurant_id_id, :booking_date_time, :number_of_diners, :accessible, :highchair, :name, :email, :phone, :status)
    end
end
