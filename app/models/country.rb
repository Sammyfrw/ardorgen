class Country < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :demonym, presence: true
  validates :history, presence: true
  validates :language, presence: true

  has_many :regions

  mount_uploader :flag, ImageUploader
end
