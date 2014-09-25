require "rails_helper"

feature "User edits comment" do

  scenario 'authenticated user edits comment on a review for a show' do
    comment = FactoryGirl.create(:comment)
    sign_in_as(comment.user)
    visit show_path(comment.review.show)
    click_on "Edit comment"
    fill_in "Text", with: comment.text
    click_on "Submit Comment"
    expect(page).to have_content("Comment updated successfully")
  end
  scenario 'authenticated user cannot edit commentors review unless commenter' do
    user = FactoryGirl.create(:user)
    comment = FactoryGirl.create(:comment)
    sign_in_as(user)
    visit show_path(comment.review.show)
    expect(page).to_not have_link("Edit comment")
  end
end
