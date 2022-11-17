class PlantTagsController < ApplicationController
  # plants/:plant_id/plant_tags/new
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    plant = Plant.find(params[:plant_id])
    tag = Tag.find(plant_tag_params[:tag])

    @plant_tag = PlantTag.new(plant: plant, tag: tag)

    if @plant_tag.save
      redirect_to garden_path(plant.garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag)
  end
end
