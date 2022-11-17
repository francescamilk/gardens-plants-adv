class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, presence: true, uniqueness: true
end
