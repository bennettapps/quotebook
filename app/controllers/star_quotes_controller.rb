class StarQuotesController < ApplicationController
  def index
    @quotes = Quote.where(star: true)
  end

  def show
  end
end
