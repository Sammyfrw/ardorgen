require 'faker'

FactoryGirl.define do
  # factory :race do
  #   sequence(:name) { |n| "Race {n}"}
  #   description "Cool cats."

  factory :race do
    name {Faker::Address.city}
    description {Faker::Lorem.paragraph(1, false)}
    evolution "Biological"

    factory :magic_race do
      evolution "Magical"
    end

    factory :bio_race do
      evolution "Biological"
    end
  end
end

