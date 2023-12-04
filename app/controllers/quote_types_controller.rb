class QuoteTypesController < ApplicationController
  before_action :set_quote_type, only: %i[ show edit update destroy ]

  # GET /quote_types or /quote_types.json
  def index
    @quote_types = QuoteType.all
  end

  # GET /quote_types/1 or /quote_types/1.json
  def show
  end

  # GET /quote_types/new
  def new
    @quote_type = QuoteType.new
  end

  # GET /quote_types/1/edit
  def edit
  end

  # POST /quote_types or /quote_types.json
  def create
    @quote_type = QuoteType.new(quote_type_params)

    respond_to do |format|
      if @quote_type.save
        format.html { redirect_to quote_type_url(@quote_type), notice: "Quote type was successfully created." }
        format.json { render :show, status: :created, location: @quote_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_types/1 or /quote_types/1.json
  def update
    respond_to do |format|
      if @quote_type.update(quote_type_params)
        format.html { redirect_to quote_type_url(@quote_type), notice: "Quote type was successfully updated." }
        format.json { render :show, status: :ok, location: @quote_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_types/1 or /quote_types/1.json
  def destroy
    @quote_type.destroy!

    respond_to do |format|
      format.html { redirect_to quote_types_url, notice: "Quote type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_type
      @quote_type = QuoteType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_type_params
      params.require(:quote_type).permit(:description)
    end
end
