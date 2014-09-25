FactoryGirl.define do
  factory :genre do

    sequence :name do |n|
      "#{n}Action"
    end

  end
end

