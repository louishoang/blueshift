FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "person_blah#{n}@example.com"
    end

    sequence :username do |n|
      "blink_user#{n}"
    end

    password "12345678"

    trait :admin do
      role "admin"
    end

    trait :member do
      role "member"
    end
  end
end

