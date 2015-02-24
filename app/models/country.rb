class Country < ActiveRecord::Base
  has_many :regions
  has_many :places

  validates :name, presence: true, uniqueness: true
  validates :demonym, presence: true
  validates :history, presence: true
  validates :language, presence: true

  mount_uploader :flag, ImageUploader
end
