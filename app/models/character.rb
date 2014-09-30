class Character < ActiveRecord::Base
  RACES = %w(Sapien Loupain Aileseau Agamidan Lyncan Vesperan)
  GENDER = %w(Male Female Other)

  validates :name, presence: true, uniqueness: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :ethercraft, presence: true
  validates :birthplace, presence: true

  mount_uploader :image, ImageUploader
end
