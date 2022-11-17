class Plant < ApplicationRecord
  belongs_to :garden
  
  has_many :plant_tags
  has_many :tags, through: :plant_tags
  # my_plant.tags

  validates :name, presence: true, uniqueness: true
end
