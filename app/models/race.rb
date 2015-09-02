class Race < ActiveRecord::Base
  EVOLUTION = %w(Biological Magical)
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :evolution, presence: true

  def self.order_by_name
    order(:name).pluck(:name)
  end

  def full_description
    [name, evolution, description].join(' - ')
  end

end
