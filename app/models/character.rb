class Character < ActiveRecord::Base
  GENDER = %w(Male Female Other)
  belongs_to :race
  belongs_to :ethercraft
  belongs_to :birthplace, class_name: "Country"
  belongs_to :birth_region, class_name: "Region"

  validates :name, presence: true, uniqueness: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :ethercraft, presence: true
  validates :birthplace, presence: true
  validates :birth_region, presence: true

  mount_uploader :image, ImageUploader
end
