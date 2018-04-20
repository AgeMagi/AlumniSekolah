class Alumnu < ApplicationRecord
  has_one :photo
  validates :nama, presence: true
  validates :email, presence: true, format: {with: /(\w)+@(\w)+.(\w)+(...)/, massage: 'Email is not valid'}
  validates :nohp, presence: true, format: {with: /[0-9]*/, massages: 'No Hp is not valid'}
  validates :kelas1, presence: true
  validates :kelas2, presence: true
  validates :kelas3, presence: true
end
