require 'rails_helper'

feature "User deletes review" do

  scenario 'authenticated user deletes a review they created for a show' do
    review = FactoryGirl.create(:review)

    sign_in_as(review.user)
    visit show_path(review.show)
    click_on "Delete review"

    expect(page).to have_content("Review deleted successfully")
  end
end
