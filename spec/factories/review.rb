FactoryGirl.define do
  factory :review do
    title "This show sucks"
    body "I didnt like this show because it wasnt funny"
    rating 3
    score 0
    association :show
    association :user
  end
end

