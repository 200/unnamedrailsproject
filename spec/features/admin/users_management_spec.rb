require "rails_helper"

feature "users management" do
  let(:user_email) { "foobar@example.com" }
  let!(:admin_user) { create(:admin_user) }

  background do
    sign_in(admin_user, scope: :admin_user)
    visit "/admin"
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
