class Administrator < ApplicationRecord
  validates :ketua1, presence: true
  validates :ketua2, presence: true
  validates :bendahara1, presence: true
  validates :bendahara2, presence: true
  validates :pembina, presence: true
  validates :penasihat, presence: true

  mount_uploader :fotoketua1, ImageUploader
  mount_uploader :fotoketua2, ImageUploader
  mount_uploader :fotobendahara1, ImageUploader
  mount_uploader :fotobendahara2, ImageUploader
  mount_uploader :fotopembina, ImageUploader
  mount_uploader :fotopenasihat,ImageUploader

  validates_processing_of :fotoketua1, :fotoketua2, :fotobendahara1, :fotobendahara2, :fotopembina, :fotopenasihat

  validate :foto_size_validation

  private
    def foto_size_validation
      errors[:fotoketua1] << "should be less than 500KB" if fotoketua1.size > 0.5.megabytes
      errors[:fotoketua2] << "should be less than 500KB" if fotoketua2.size > 0.5.megabytes
      errors[:fotobendahara1] << "should be less than 500KB" if fotobendahara1.size > 0.5.megabytes
      errors[:fotobendahara2] << "should be less than 500KB" if fotobendahara2.size > 0.5.megabytes
      errors[:fotopembina] << "should be less than 500KB" if fotopembina.size > 0.5.megabytes
      errors[:fotopenasihat] << "should be less than 500KB" if fotopenasihat.size > 0.5.megabytes
    end
end