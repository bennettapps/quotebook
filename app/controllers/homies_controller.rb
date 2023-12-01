class HomiesController < ApplicationController
  before_action :set_homy, only: %i[ show edit update destroy ]

  # GET /homies or /homies.json
  def index
    @homies = Homie.all
  end

  # GET /homies/1 or /homies/1.json
  def show
  end

  # GET /homies/new
  def new
    @homy = Homie.new
  end

  # GET /homies/1/edit
  def edit
  end

  # POST /homies or /homies.json
  def create
    @homy = Homie.new(homy_params)

    respond_to do |format|
      if @homy.save
        format.html { redirect_to homy_url(@homy), notice: "Homie was successfully created." }
        format.json { render :show, status: :created, location: @homy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @homy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homies/1 or /homies/1.json
  def update
    respond_to do |format|
      if @homy.update(homy_params)
        format.html { redirect_to homy_url(@homy), notice: "Homie was successfully updated." }
        format.json { render :show, status: :ok, location: @homy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @homy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homies/1 or /homies/1.json
  def destroy
    @homy.destroy!

    respond_to do |format|
      format.html { redirect_to homies_url, notice: "Homie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homy
      @homy = Homie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def homy_params
      params.require(:homy).permit(:name)
    end
end
