class CustbooksController < ApplicationController
  before_action :set_custbook, only: %i[ show edit update destroy ]

  # GET /custbooks or /custbooks.json
  def index
    @custbooks = Custbook.all
  end

  # GET /custbooks/1 or /custbooks/1.json
  def show
  end

  # GET /custbooks/new
  def new
    @custbook = Custbook.new
    @restaurants = Restaurant.all
  end

  # GET /custbooks/1/edit
  def edit
  end

  # POST /custbooks or /custbooks.json
  def create
    @custbook = Custbook.new(custbook_params)

    respond_to do |format|
      if @custbook.save
        format.html { redirect_to custbook_url(@custbook), notice: "Custbook was successfully created." }
        format.json { render :show, status: :created, location: @custbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custbooks/1 or /custbooks/1.json
  def update
    respond_to do |format|
      if @custbook.update(custbook_params)
        format.html { redirect_to custbook_url(@custbook), notice: "Custbook was successfully updated." }
        format.json { render :show, status: :ok, location: @custbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custbooks/1 or /custbooks/1.json
  def destroy
    @custbook.destroy

    respond_to do |format|
      format.html { redirect_to custbooks_url, notice: "Custbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custbook
      @custbook = Custbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custbook_params
      params.require(:custbook).permit(:restaurant_id, :booking_date_time, :number_of_diners, :accessible, :highchair, :name, :email, :phone, :status, :source, :notes, :cancelled_by, :cancelled_at)
    end
end
