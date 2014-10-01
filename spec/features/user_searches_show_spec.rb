require 'rails_helper'

feature "User searches for a show" do

  scenario 'authenticated user searches for a show' do

    user = FactoryGirl.create(:user)
    show = FactoryGirl.create(:show)

    sign_in_as(user)

    fill_in 'search', with: show.name
    click_button "Search"

    expect(page).to have_content show.name

  end



end

