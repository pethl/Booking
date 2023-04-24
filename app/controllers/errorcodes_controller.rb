class ErrorcodesController < ApplicationController
  before_action :set_errorcode, only: %i[ show edit update destroy ]

  # GET /errorcodes or /errorcodes.json
  def index
    @errorcodes = Errorcode.all
  end

  # GET /errorcodes/1 or /errorcodes/1.json
  def show
  end

  # GET /errorcodes/new
  def new
    @errorcode = Errorcode.new
  end

  # GET /errorcodes/1/edit
  def edit
  end

  # POST /errorcodes or /errorcodes.json
  def create
    @errorcode = Errorcode.new(errorcode_params)

    respond_to do |format|
      if @errorcode.save
        format.html { redirect_to errorcode_url(@errorcode), notice: "Errorcode was successfully created." }
        format.json { render :show, status: :created, location: @errorcode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @errorcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /errorcodes/1 or /errorcodes/1.json
  def update
    respond_to do |format|
      if @errorcode.update(errorcode_params)
        format.html { redirect_to errorcode_url(@errorcode), notice: "Errorcode was successfully updated." }
        format.json { render :show, status: :ok, location: @errorcode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @errorcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /errorcodes/1 or /errorcodes/1.json
  def destroy
    @errorcode.destroy

    respond_to do |format|
      format.html { redirect_to errorcodes_url, notice: "Errorcode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_errorcode
      @errorcode = Errorcode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def errorcode_params
      params.require(:errorcode).permit(:ref, :msg, :desc)
    end
end
