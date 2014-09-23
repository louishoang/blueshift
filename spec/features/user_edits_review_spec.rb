require 'rails_helper'

feature "user edits review" do

  scenario 'authenticated user edits review for a show that they wrote' do

    user = FactoryGirl.create(:user)
    show = FactoryGirl.create(:show)
    review = FactoryGirl.build(:review)

    sign_in_as(user)

    click_on "See shows"

    visit show_path(show)

    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    click_on "Add review"

    click_on "Edit review"

    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    save_and_open_page
    click_on "Edit review"

    expect(page).to have_content("Review updated successfully")

  end
end
