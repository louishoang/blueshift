require 'rails_helper'

feature "User edits comment" do

  scenario 'authenticated user edits comment on a review for a show' do
    user = FactoryGirl.create(:user)
    show = FactoryGirl.create(:show)
    review = FactoryGirl.build(:review)
    comment = FactoryGirl.build(:comment)

    sign_in_as(user)

    click_on "See shows"

    visit show_path(show)

    fill_in "Title", with: review.title
    fill_in "Body", with: review.body
    click_on "Add review"

    click_on "Add comment"


    fill_in "Text", with: comment.text
    click_on "Submit Comment"
save_and_open_page

    click_on "Edit comment"


    fill_in "Text", with: comment.text
    click_on "Submit Comment"

 save_and_open_page


    expect(page).to have_content("Comment updated successfully")
  end

end
