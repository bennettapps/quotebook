class SearchController < ApplicationController
  def index
    @query = params[:query]
    @insanity = params[:insanity]
    @quotes = Quote.where("quote like '%#{@query}%'")
    @quotes = @quotes.where("insanity >= ?", @insanity)
  end
end