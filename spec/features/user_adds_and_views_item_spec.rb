require 'rails_helper'

feature "User adds and views item" do

# Acceptance Criteria:
# -[ ] Item must have a name
# -[ ] Item must have a description

  scenario 'user adds item' do
    item = FactoryGirl.build(:item)

    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit new_item_path

    fill_in 'Title', with: item.title
    fill_in 'Description', with: item.description
    click_on 'Create Item'

    expect(page).to have_content("Item")
    expect(page).to have_content("What a great item!")
  end

  scenario 'user not signed in' do
    visit new_item_path
    save_and_open_page
    expect(page).to have_content("You need to sign in or sign up before continuing.")
  end

  scenario 'user does not provide necessary info' do
    sign_in_as(user)

    visit new_item_path

    click_on 'Create Item'

    expect(page).to have_content("can't be blank")
  end

end
