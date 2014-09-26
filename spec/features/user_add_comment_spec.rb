require 'rails_helper'

feature "User adds comment" do

  scenario 'authenticated user creates comment on a review for a show' do
    review = FactoryGirl.create(:review)
    review.comments << FactoryGirl.create(:comment)
    member_user = FactoryGirl.create(:user, :member)
    sign_in_as(member_user)
    visit show_path(review.show)
    click_on "Add comment"
    fill_in "Text", with: review.comments.first.text
    click_on "Submit Comment"
    expect(page).to have_content("Comment created successfully")
    expect(page).to have_content(review.comments.first.text)
  end
end
