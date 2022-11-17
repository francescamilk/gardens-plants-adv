class GardensController < ApplicationController
  # As a user I can see all gardens
  # 'localhost/gardens'
  def index
    @gardens = Garden.all
  end

  # As a user I can see details on one garden
  # 'localhost/gardens/:id'
  def show
    @garden = Garden.find(params[:id])
    @plant = Plant.new
    @plant_tag = PlantTag.new
  end
end
