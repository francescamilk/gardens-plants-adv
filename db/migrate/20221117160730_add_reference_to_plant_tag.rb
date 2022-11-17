class AddReferenceToPlantTag < ActiveRecord::Migration[7.0]
  def change
    add_reference :plant_tags, :tag
    #                           tag_id
  end
end
