require "rails_helper"

feature "login" do
  let(:password) { "password" }
  let!(:admin_user) { create(:admin_user, password: password, password_confirmation: password) }
  let(:email) { admin_user.email }

  background do
    visit "/admin"
  end

  scenario "Check login page exists and login" do
    expect(page).to have_content("Login")

    expect(page).to have_css("div", text: "You need to sign in or sign up before continuing.")

    within("form.admin_user") do
      fill_in "admin_user_email", with: admin_user.email
      fill_in "admin_user_password", with: password
      click_button("Login")
    end

    expect(page).to have_css("div", text: "Signed in successfully.")
  end
end
