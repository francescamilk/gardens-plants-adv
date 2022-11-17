class Tag < ApplicationRecord
  has_many :plant_tags, dependent: :destroy
end
