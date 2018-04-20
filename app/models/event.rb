class Event < ApplicationRecord
  has_many :photos
  has_many :participants
  validates_associated :participants
  validates :dilaksanakan, presence: true
  validates :narasi, presence: true
end
