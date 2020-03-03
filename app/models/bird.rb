class Bird < ApplicationRecord
  has_many :sighting
  has_many :locations, through: :sightings
end