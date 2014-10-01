require "rails_helper"

feature "Admin actions" do

  scenario "Admin views a list of users" do
    admin = FactoryGirl.create(:user, :admin)
    sign_in_as(admin)
    click_on "See users"
    expect(page).to have_content("Here is a list of users")
  end

  scenario "Admin deletes a user" do
    user = FactoryGirl.create(:user, :member)
    admin = FactoryGirl.create(:user, :admin)
    visit new_user_session_path
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_on "Log in"
    click_on "See users"
    click_on user.username
    click_on "Delete user"
    expect(page).to have_content("User has been successfully deleted")
  end

  scenario "Admin deletes a show" do
    FactoryGirl.create(:show)
    admin = FactoryGirl.create(:user, :admin)
    sign_in_as(admin)
    click_on "See all shows"
    click_on "Delete show"
      save_and_open_page
    expect(page).to have_content("Show has been successfully deleted")
  end

  scenario "Admin deletes a review" do
    review = FactoryGirl.create(:review)
    admin = FactoryGirl.create(:user, :admin)
    sign_in_as(admin)
    click_on "See all shows"
    visit admin_show_path(review.show)
    click_on "Delete review"
    expect(page).to have_content("Review deleted successfully")
  end
end

