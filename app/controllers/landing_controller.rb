class LandingController < ApplicationController
  def index
  	@bikes = Bike.order("RANDOM()").take(2).each

  	sort = params[:sort]
  	sort = nil unless sort.in?(['model', 'brand'])

  	@bikesOrder = Bike.order(sort)

  end
end
