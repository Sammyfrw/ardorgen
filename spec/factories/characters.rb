require 'faker'

FactoryGirl.define do
  factory :character do
    name {Faker::Name.first_name}
    gender "Male"
    age "21"
    image ""
    race
    ethercraft
    birthplace
    birth_region

    trait :male do
      gender "Male"
    end

    trait :female do
      gender "Female"
    end

    trait :other do
      gender "Other"
    end

    factory :male_character, traits: [:male]
    factory :female_character, traits: [:female]
    factory :other_character, traits: [:other]
  end
end

