class BikesController < ApplicationController
  before_action :set_bike, only: [:edit, :update, :destroy]
  before_action :authenticate_user!,except:[:index]
  before_action :bike_owner, only: [:edit, :update, :destroy]

  # GET /bikes
  # GET /bikes.json
  def index
    @bikes = Bike.all
  end

  def bike_owner
   unless @bike.user_id == current_user.id
    flash[:notice] = 'Access denied as you are not owner of this Bike'
    redirect_to bikes_path
  end

  # GET /bikes/1
  # GET /bikes/1.json
  def show
    @bike = Bike.find(params[:id])
  end

  # GET /bikes/new
  def new
    @bike = Bike.new
  end

  # GET /bikes/1/edit
  def edit
  end

  # POST /bikes
  # POST /bikes.json
  def create
    @bike = Bike.new(params[:bike])

    respond_to do |format|
      if @bike.save
        format.html { redirect_to @bike, notice: 'Bike was successfully created.' }
        format.json { render :show, status: :created, location: @bike }
      else
        format.html { render :new }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bikes/1
  # PATCH/PUT /bikes/1.json
  def update
    respond_to do |format|
      if @bike.update(bike_params)
        format.html { redirect_to @bike, notice: 'Bike was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike }
      else
        format.html { render :edit }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bikes/1
  # DELETE /bikes/1.json
  def destroy
    @bike.destroy
    respond_to do |format|
      format.html { redirect_to bikes_url, notice: 'Bike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bike
      @bike = Bike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bike_params
      params.require(:bike).permit(:avatar, :model, :brand).merge(user_id: current_user.id)
    end
  end
end
