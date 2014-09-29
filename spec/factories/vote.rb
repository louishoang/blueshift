FactoryGirl.define do
  factory :vote do
    score 0

    association :review
    association :user
  end
end

