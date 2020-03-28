class User < ApplicationRecord
  validates_presence_of :email, uniqueness: { case_sensitive: false }, format: { with: Devise.email_regexp }

  def self.serialize_into_session(record)
    [record.to_key.map(&:to_s), record.authenticatable_salt]
  end

  def self.serialize_into_cookie(record)
    [record.to_key.map(&:to_s), record.rememberable_value]
  end
end
