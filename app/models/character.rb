class Character < ActiveRecord::Base
  GENDER = %w(Male Female Other)
  has_one :race
  has_one :ethercraft
  has_one :birthplace, class_name: "Country"
  has_one :birth_region, class_name: "Region"

  validates :name, presence: true, uniqueness: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :ethercraft, presence: true
  validates :birthplace, presence: true
  validates :birth_region, presence: true

  mount_uploader :image, ImageUploader
end
