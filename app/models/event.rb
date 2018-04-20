class Event < ApplicationRecord
  has_many :photos
  has_many :participants
  validates :photos, presence: true
  validates_associated :photos
  validates_associated :participants
  validates :dilaksanakan, presence: true
  validates :narasi, presence: true
end
