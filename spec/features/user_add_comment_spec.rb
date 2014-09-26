require 'rails_helper'

feature "User adds comment" do

  scenario 'authenticated user creates comment on a review for a show' do

    comment = FactoryGirl.build(:comment)
    sign_in_as(comment.user)

    visit show_path(comment.review.show)

    click_on "Add comment"

    fill_in "Text", with: comment.text
    click_on "Submit Comment"

    expect(page).to have_content("Comment created successfully")
    expect(page).to have_content(comment.text)
  end
end
