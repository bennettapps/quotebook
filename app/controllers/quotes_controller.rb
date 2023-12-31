class QuotesController < ApplicationController
  before_action :set_homie
  before_action :set_quote, only: %i[ show edit update destroy ]

  # GET /quotes or /quotes.json
  def index
    @quotes = @homie.quotes
  end

  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = @homie.quotes.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes or /quotes.json
  def create
    @quote = @homie.quotes.new(quote_params)

    respond_to do |format|
      if @quote.save
        format.html { redirect_to homie_quote_url(@homie, @quote), notice: "Quote was successfully created." }
        format.json { render :show, status: :created, location: [@homie, @quote] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to homie_quote_url(@homie, @quote), notice: "Quote was successfully updated." }
        format.json { render :show, status: :ok, location: [@homie, @quote] }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1 or /quotes/1.json
  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to homie_quotes_url(@homie), notice: "Quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    def set_homie
      @homie = Homie.find(params[:homie_id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:quote, :quote_type_id, :insanity, :star)
    end
end
