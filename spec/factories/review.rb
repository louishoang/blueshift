FactoryGirl.define do
  factory :review do
    sequence :user_id do |n|
      "#{n}"
    end

    sequence :show_id do |n|
      "#{n}"
    end

    title "This show sucks"

    body "I didnt like this show because it wasnt funny"


  end
end

