require 'rails_helper'

feature "User deletes comment" do
  scenario 'authenticated commenter can delete their comment' do
    comment = FactoryGirl.create(:comment)
    sign_in_as(comment.user)
    visit show_path(comment.review.show)
    click_on "Delete comment"
    expect(page).to have_content("Comment deleted successfully")
  end

  scenario "authenticated user can not delete others' comments" do
    user = FactoryGirl.create(:user)
    comment = FactoryGirl.create(:comment)
    sign_in_as(user)
    visit show_path(comment.review.show)
    expect(page).to_not have_link("Delete comment")
  end
end
