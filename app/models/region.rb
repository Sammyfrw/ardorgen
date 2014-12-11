class Region < ActiveRecord::Base
  belongs_to :country

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :history, presence: true
end
