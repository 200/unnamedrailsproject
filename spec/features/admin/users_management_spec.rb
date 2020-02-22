require "rails_helper"

feature "users management" do
  let(:password) { "password" }
  let(:user_email) { "foobar@example.com" }
  let!(:admin_user) { create(:admin_user, password: password, password_confirmation: password) }

  background do
    visit "/admin"
    within("form.admin_user") do
      fill_in "admin_user_email", with: admin_user.email
      fill_in "admin_user_password", with: password
      click_button("Login")
    end
  end

  scenario "Create user" do
    click_link("Users")

    expect(page).to have_current_path("/admin/users")
    click_link("New User")
    expect(page).to have_current_path("/admin/users/new")

    within("form.user") do
      fill_in "user_email", with: user_email
      click_button("Create User")
    end

    expect(page).to have_css("div", text: "User was successfully created.")
    expect(User.last.email).to eq(user_email)
  end
end
