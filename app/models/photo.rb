class Photo < ApplicationRecord
  mount_uploader :foto, ImageUploader
  validates :foto, presence: true
end
