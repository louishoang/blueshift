FactoryGirl.define do
  factory :genre do

    sequence :name do |n|
      "Action #{n}"
    end

  end
end

