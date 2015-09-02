FactoryGirl.define do
  factory :race do
    sequence(:name) { |n| "Race {n}"}
    description "Cool cats."
    evolution "Magical"
  end
end

