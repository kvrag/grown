class GardensController < ApplicationController

  def index
    @gardens = Garden.all 
  end

  def show
    @garden = Garden.find(params[:id])
    @plot = Plot.new
  end

  def new 
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      redirect_to garden_path(@garden)
    else
      @errors = @garden.errors.full_messages
      render :new
    end
  end

  def edit
    @garden = Garden.find(params[:id])
    redirect_to '/login' if @garden.planner != current_user
  end

  def update 
    @garden = Garden.find(params[:id])
    @garden.update_attributes(garden_edit_params)
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to user_path(current_user) 
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :location, :planner_id)
  end

  def garden_edit_params
    params.require(:garden).permit(:name, :location)
  end

end