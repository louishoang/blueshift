FactoryGirl.define do
  factory :show do
    sequence :name do |n|
      "Show #{n}"
    end

    sequence :description do |n|
      "Show #{n} is about a bunch of people doing a bunch of things"
    end

    genre_id 3

    running_dates "March 2010 - July 2012"


  end
end

