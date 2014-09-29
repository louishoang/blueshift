require 'rails_helper'

feature "User deletes review" do

  scenario 'authenticated user deletes a review they created for a show' do

    user = FactoryGirl.create(:user)
    show = FactoryGirl.create(:show)
    review = FactoryGirl.build(:review)

    sign_in_as(user)

    click_on "See shows"

    visit show_path(show)

    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    click_on "Add review"
    click_on "Delete review"
    expect(page).to have_content("Review deleted successfully")

  end
end
