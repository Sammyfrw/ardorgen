class Race < ActiveRecord::Base
  EVOLUTION = %w(Biological Magical)
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :evolution, presence: true
end
