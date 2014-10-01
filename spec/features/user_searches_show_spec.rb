require 'rails_helper'

feature "User searches for a show" do

  scenario 'authenticated user searches for a show' do

    user = FactoryGirl.create(:user)
    show = FactoryGirl.create(:show)
    sign_in_as(user)

    fill_in "Search Shows", with: show.name
    save_and_open_page
    click_on "Search"

    expect(page).to have_content "Show"

  end



end

