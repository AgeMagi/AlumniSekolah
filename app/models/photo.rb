class Photo < ApplicationRecord

  mount_uploader :foto, ImageUploader
  validates_processing_of :foto
  validate :foto_size_validation

  private
  def foto_size_validation
    errors[:foto] << "should be less than 500KB" if foto.size > 0.5.megabytes
  end
end
