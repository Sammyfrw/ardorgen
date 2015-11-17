require 'faker'

FactoryGirl.define do
  factory :user do
    # name {Faker::Internet.user_name}
    # email {Faker::Internet.safe_email}
    # password_digest {Faker::Internet.password}
    name {Faker::Address.city}
    email {Faker::Address.city}
    password_digest {Faker::Address.city}
    role "user"

    factory :veteran do
      role "veteran"
    end

    factory :moderator do
      role "moderator"
    end

    factory :admin do
      role "admin"
    end

  end
end
