class Token < ApplicationRecord
  belongs_to :user

  validates :name, :ticker, presence: true, uniqueness: true
  validates :hard_cap, :precision, presence: true
end
