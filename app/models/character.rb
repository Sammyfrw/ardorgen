class Character < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :ethercraft, presence: true
  validates :birthplace, presence: true
end
