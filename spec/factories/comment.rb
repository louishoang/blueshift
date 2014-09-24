FactoryGirl.define do
  factory :comment do
    sequence :user_id do |n|
      "#{n}"
    end

    sequence :review_id do |n|
      "#{n}"
    end

    text "This is my first comment"

  end
end
