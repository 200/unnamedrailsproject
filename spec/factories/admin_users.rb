FactoryBot.define do
  factory :admin_user do
    email
    password { "password" }
    password_confirmation { "password" }
  end
end
