require 'rails_helper'

feature "User votes review" do

  scenario 'authenticated user up votes a review for a show' do

    vote = FactoryGirl.create(:vote)
    sign_in_as(vote.user)
    click_on "See all shows"
    visit show_path(vote.review.show)
    save_and_open_page
    click_on "upvote"
    expect(page).to have_content "Current Score: 1"
  end

  scenario 'authenticated user down votes a review for a show' do

    vote = FactoryGirl.create(:vote)
    sign_in_as(vote.user)
    click_on "See all shows"
    visit show_path(vote.review.show)

    click_on "downvote"
    expect(page).to have_content "Current Score: -1"
  end

end



