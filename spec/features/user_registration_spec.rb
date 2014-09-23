require 'rails_helper'

feature "User registration, sign in and sign out" do

  # user signs up
  scenario 'user signs up with correct credentials' do
    #setup, user interaction & expeectation

    user = FactoryGirl.build(:user)

    visit root_path #this goes to welcome page

    click_on "Sign up"
    fill_in "Email", with: user.email
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password
    click_on "Register"

    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  #user signs in

  scenario 'user signs in with correct credentials' do

    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"

    expect(page).to have_content("Signed in successfully.")

  end

  # user signs out

  scenario 'user signs out' do

    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "Sign out"

    expect(page).to have_content( "Signed out successfully.")

  end

end
