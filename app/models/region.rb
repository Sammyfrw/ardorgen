class Region < ActiveRecord::Base
  belongs_to :country
  has_many :places

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :history, presence: true
end
