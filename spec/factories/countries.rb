require 'faker'

FactoryGirl.define do
  factory :country, aliases: [:birthplace] do
    name {Faker::Address.country}
    demonym {Faker::Name.prefix}
    history {Faker::Lorem.paragraph(1, false)}
    language {Faker::Address.country}
  end
end
