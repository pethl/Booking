class SittingsController < ApplicationController
  before_action :set_sitting, only: %i[ show edit update destroy ]

  # GET /sittings or /sittings.json
  def index
    @sittings = Sitting.all
  end

  # GET /sittings/1 or /sittings/1.json
  def show
  end

  # GET /sittings/new
  def new
    @sitting = Sitting.new
  end

  # GET /sittings/1/edit
  def edit
  end

  # POST /sittings or /sittings.json
  def create
    @sitting = Sitting.new(sitting_params)

    respond_to do |format|
      if @sitting.save
        format.html { redirect_to sitting_url(@sitting), notice: "Sitting was successfully created." }
        format.json { render :show, status: :created, location: @sitting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sittings/1 or /sittings/1.json
  def update
    respond_to do |format|
      if @sitting.update(sitting_params)
        format.html { redirect_to sitting_url(@sitting), notice: "Sitting was successfully updated." }
        format.json { render :show, status: :ok, location: @sitting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sittings/1 or /sittings/1.json
  def destroy
    @sitting.destroy

    respond_to do |format|
      format.html { redirect_to sittings_url, notice: "Sitting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitting
      @sitting = Sitting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sitting_params
      params.require(:sitting).permit(:start_time, :end_time, :opening_hour_id)
    end
end
