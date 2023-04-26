class ExemptionsController < ApplicationController
  before_action :set_exemption, only: %i[ show edit update destroy ]

  # GET /exemptions or /exemptions.json
  def index
    @exemptions = Exemption.all
  end

  # GET /exemptions/1 or /exemptions/1.json
  def show
  end

  # GET /exemptions/new
  def new
    @exemption = Exemption.new
  end

  # GET /exemptions/1/edit
  def edit
  end

  # POST /exemptions or /exemptions.json
  def create
    @exemption = Exemption.new(exemption_params)

    respond_to do |format|
      if @exemption.save
        format.html { redirect_to exemption_url(@exemption), notice: "Exemption was successfully created." }
        format.json { render :show, status: :created, location: @exemption }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exemption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemptions/1 or /exemptions/1.json
  def update
    respond_to do |format|
      if @exemption.update(exemption_params)
        format.html { redirect_to exemption_url(@exemption), notice: "Exemption was successfully updated." }
        format.json { render :show, status: :ok, location: @exemption }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exemption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemptions/1 or /exemptions/1.json
  def destroy
    @exemption.destroy

    respond_to do |format|
      format.html { redirect_to exemptions_url, notice: "Exemption was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemption
      @exemption = Exemption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exemption_params
      params.require(:exemption).permit(:exempt_dat, :exempt_msg, :lunch, :dinner)
    end
end
