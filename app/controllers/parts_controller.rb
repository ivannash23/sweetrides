class PartsController < ApplicationController
  before_action :authenticate_user!,except:[:index]
  before_action :part_owner, only: [:edit, :update, :destroy]
  before_action :set_part, only: [:edit, :update, :destroy]

  # GET /parts
  # GET /parts.json
  def index
    @parts = Part.all
  end



  # GET /parts/1
  # GET /parts/1.json
  def show
    @part = Part.find(params[:id])
  end

  # GET /parts/new
  def new
    params.permit!
    @part = Part.new
  end

  # GET /parts/1/edit

  # POST /parts
  # POST /parts.json
  def create
    params.permit!
    @part = Part.new(params[:part])

    respond_to do |format|
      if @part.save
        format.html { redirect_to @part, notice: 'Part was successfully created.' }
        format.json { render :show, status: :created, location: @part }
      else
        format.html { render :new }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts/1
  # DELETE /parts/1.json
  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_url, notice: 'Part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def part_owner
      
      @part = Part.find(params[:id])
      
      def edit
      end

      def update
        respond_to do |format|
          if @part.update(part_params)
            format.html { redirect_to @part, notice: 'Part was successfully updated.' }
            format.json { render :show, status: :ok, location: @part }
          else
            format.html { render :edit }
            format.json { render json: @part.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @part.destroy
        respond_to do |format|
          format.html { redirect_to parts_url, notice: 'Part was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

     unless @part.user_id == current_user.id
      flash[:notice] = 'Access denied as you are not owner of this Part'
      redirect_to parts_path
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_part
      @part = Part.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_params
      params.require(:part).permit(:avatar, :model, :brand).merge(user_id: current_user.id)
    end
  end
end
