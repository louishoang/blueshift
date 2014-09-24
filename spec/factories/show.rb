FactoryGirl.define do
  factory :show do
    sequence :name do |n|
      "Show #{n}"
    end

    sequence :description do |n|
      "Show #{n} is about a bunch of people doing a bunch of things"
    end

    year 2003

    association :genre
  end
end

