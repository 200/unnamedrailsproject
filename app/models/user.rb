class User < ApplicationRecord
  validates_presence_of :email, uniqueness: { case_sensitive: false }, format: { with: Devise.email_regexp }
end
