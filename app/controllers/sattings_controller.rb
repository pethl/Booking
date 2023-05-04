class SattingsController < ApplicationController
  before_action :set_satting, only: %i[ show edit update destroy ]

  # GET /sattings or /sattings.json
  def index
    @sattings = Satting.all
  end

  # GET /sattings/1 or /sattings/1.json
  def show
  end

  # GET /sattings/new
  def new
    @satting = Satting.new
  end

  # GET /sattings/1/edit
  def edit
  end

  # POST /sattings or /sattings.json
  def create
    @satting = Satting.new(satting_params)

    respond_to do |format|
      if @satting.save
        format.html { redirect_to satting_url(@satting), notice: "Satting was successfully created." }
        format.json { render :show, status: :created, location: @satting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @satting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sattings/1 or /sattings/1.json
  def update
    respond_to do |format|
      if @satting.update(satting_params)
        format.html { redirect_to satting_url(@satting), notice: "Satting was successfully updated." }
        format.json { render :show, status: :ok, location: @satting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @satting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sattings/1 or /sattings/1.json
  def destroy
    @satting.destroy

    respond_to do |format|
      format.html { redirect_to sattings_url, notice: "Satting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_satting
      @satting = Satting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def satting_params
      params.require(:satting).permit(:start_time, :end_time, :openinghour_id)
    end
end
