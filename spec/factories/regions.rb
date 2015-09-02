require 'faker'

FactoryGirl.define do
  factory :region, aliases: [:birth_region] do
    name {Faker::Address.state}
    history {Faker::Lorem.paragraph(1, false)}
    country
  end
end
