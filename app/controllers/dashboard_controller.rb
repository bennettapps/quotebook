class DashboardController < ApplicationController
  def index
    @homies = Homie.all
  end
end
