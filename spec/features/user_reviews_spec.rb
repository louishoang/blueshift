require 'rails_helper'

feature "User adds review" do

  scenario 'authenticated user creates review for a show' do
    review = FactoryGirl.build(:review)
    sign_in_as(review.user)
    click_on "See all shows"
    visit show_path(review.show)
    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    select review.rating, from: "Rating"
    save_and_open_page
    click_on "Add review"
    expect(page).to have_content("Review created successfully")
  end
end
