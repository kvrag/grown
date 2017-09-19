class PlotsController < ApplicationController

  def new
    @plot = Plot.new
  end

  def create
    @plot = Plot.new(plot_params)
    if @plot.save
      redirect_to garden_path(@plot.garden)
    else
      @errors = @plot.errors.full_messages
      render :new
    end
  end

  private

  def plot_params
    params.require(:plot).permit(:contributor_id, :garden_id, :plant_id)
  end

end