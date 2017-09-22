class PlantsController < ApplicationController

  def index
    @plants = Plant.all 
  end

  def show
    @plant = Plant.find(params[:id])
    @plot = Plot.new
  end

end