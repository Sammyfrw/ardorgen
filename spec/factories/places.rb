require 'faker'

FactoryGirl.define do
  factory :place do
    name {Faker::Address.country}
    history {Faker::Lorem.paragraph(1, false)}
    country
    region
  end
end
