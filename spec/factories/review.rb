FactoryGirl.define do
  factory :review do
    # sequence :user do |n|
    #   "#{n}"
    # end

    # sequence :show do |n|
    #   "#{n}"
    # end

    title "This show sucks"

    body "I didnt like this show because it wasnt funny"

    association :show
    association :user
  end
end

