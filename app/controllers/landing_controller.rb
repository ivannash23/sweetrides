class LandingController < ApplicationController
  def index
  	@bikes = Bike.all
  end
end
