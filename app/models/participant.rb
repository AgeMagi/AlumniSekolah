class Participant < ApplicationRecord
  has_one :photo
  validates :name, :presence => true
  validates :email, :presence => true, format: {with: /(\w)+@(\w)+.(\w)+(...)/, massage: 'Email is not valid'}

end
