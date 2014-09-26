require 'rails_helper'

feature "User adds review" do

  scenario 'authenticated user creates review for a show' do
    user = FactoryGirl.create(:user)
    show = FactoryGirl.create(:show)
    review = FactoryGirl.build(:review)
    sign_in_as(user)
    click_on "See all shows"
    visit show_path(show)
    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    click_on "Add review"
    expect(page).to have_content("Review created successfully")
  end
end
