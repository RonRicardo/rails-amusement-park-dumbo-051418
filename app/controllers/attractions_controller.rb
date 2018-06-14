class AttractionsController < ApplicationController

def new
  @attraction = Attraction.new
  render :new
end

def show
  @attraction = Attraction.find(params[:id])
  render :show
end

def create
  @attraction = Attraction.create(attraction_params)
  redirect_to attraction_path(@attraction)
end

def index
  @attractions = Attraction.all
  render :index
end

private
  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
  end

end
