class Place < ActiveRecord::Base
  belongs_to :country
  belongs_to :region

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :region, presence: true
  validates :history, presence: true
end
