<<<<<<< HEAD
class Event < ApplicationRecord
  has_many :photos
  has_many :participants
  validates :photos, presence: true
  validates_associated :photos
  validates_associated :participants
  validates :dilaksanakan, presence: true
  validates :narasi, presence: true
end
=======
class Event < ApplicationRecord
  has_many :photos
  has_many :participants
  validates_associated :participants
  validates :dilaksanakan, presence: true
  validates :narasi, presence: true
end
>>>>>>> 72853ed04a13cf9cc3a83be13228c45c46b8bc87
