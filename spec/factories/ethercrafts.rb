require 'faker'

FactoryGirl.define do
  factory :ethercraft do
    name {Faker::Company.name}
    description {Faker::Lorem.paragraph(1, false)}
  end
end
