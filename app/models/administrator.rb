class Administrator < ApplicationRecord
  validates :ketua1, presence: true
  validates :ketua2, presence: true
  validates :bendahara1, presence: true
  validates :bendahara2, presence: true
  validates :pembina, presence: true
  validates :penasihat1, presence: true
  validates :penasihat2, presence: true
  validates :penasihat3, presence: true
  validates :humas1, presence: true
  validates :humas2, presence: true
  validates :umum1, presence: true
  validates :umum2, presence: true
  validates :pk1, presence: true
  validates :pk2, presence: true
  validates :pk3, presence: true
  validates :pk41, presence: true
  validates :pk42, presence: true
  validates :pk51, presence: true
  validates :pk52, presence: true
  validates :pk6, presence: true
  validates :pk7, presence: true
  validates :pk81, presence: true
  validates :pk82, presence: true
  validates :sekretaris, presence: true

  mount_uploader :fotoketua1, ImageUploader
  mount_uploader :fotoketua2, ImageUploader
  mount_uploader :fotobendahara1, ImageUploader
  mount_uploader :fotobendahara2, ImageUploader
  mount_uploader :fotopembina, ImageUploader
  mount_uploader :fotopenasihat1,ImageUploader
  mount_uploader :fotopenasihat2,ImageUploader
  mount_uploader :fotopenasihat3,ImageUploader
  mount_uploader :fotohumas1,ImageUploader
  mount_uploader :fotohumas2,ImageUploader
  mount_uploader :fotoumum1,ImageUploader
  mount_uploader :fotoumum2,ImageUploader
  mount_uploader :fotopk1,ImageUploader
  mount_uploader :fotopk2,ImageUploader
  mount_uploader :fotopk3,ImageUploader
  mount_uploader :fotopk41,ImageUploader
  mount_uploader :fotopk42,ImageUploader
  mount_uploader :fotopk51,ImageUploader
  mount_uploader :fotopk52,ImageUploader
  mount_uploader :fotopk6,ImageUploader
  mount_uploader :fotopk7,ImageUploader
  mount_uploader :fotopk81,ImageUploader
  mount_uploader :fotopk82,ImageUploader
  mount_uploader :fotosekretaris, ImageUploader

end