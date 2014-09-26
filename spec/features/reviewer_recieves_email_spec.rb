require 'rails_helper'

feature "reviewer recieves email when commenter submits a comment" do

  scenario 'authenticated user comments on review and an email is generated and sent to reviewer' do
    ActionMailer::Base.deliveries = []
    comment = FactoryGirl.build(:comment)

    sign_in_as(comment.user)

    visit show_path(comment.review.show)
    click_on "Add comment"

    fill_in "Text", with: comment.text
    click_on "Submit Comment"

    expect(ActionMailer::Base.deliveries.size).to eql(1)

    # the email we just sent should have the proper subject and recipient:
    last_email = ActionMailer::Base.deliveries.last
    expect(last_email).to have_subject('There is a new comment on your review')
    expect(last_email).to deliver_to(comment.review.user.email)
    expect(last_email.body).to have_content(comment.text)
  end
end
