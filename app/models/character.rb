class Character < ActiveRecord::Base
  GENDER = %w(Male Female Other)

  validates :name, presence: true, uniqueness: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :ethercraft, presence: true
  validates :birthplace, presence: true

  mount_uploader :image, ImageUploader
end
