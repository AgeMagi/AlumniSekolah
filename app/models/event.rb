class Event < ApplicationRecord
  has_many :photos
  has_many :participants
end
