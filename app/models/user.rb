class User < ApplicationRecord
    validates :email, uniqueness: { case_sensitive: false }, format: { with: Devise.email_regexp }
end
