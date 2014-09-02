class Character < ActiveRecord::Base
  RACES = %w(Sapien Loupain Aileseau Agamidan Lyncan Vesperan)
  GENDER = %w(Male Female Other)
  ETHERCRAFT = %w(Reaving Enforcing Evoking Invoking Empty)

  validates :name, presence: true, uniqueness: true
  validates :race, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :ethercraft, presence: true
  validates :birthplace, presence: true
end
