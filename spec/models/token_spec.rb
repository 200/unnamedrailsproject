require "rails_helper"

RSpec.describe Token, type: :model do
  describe "#name" do
    it { is_expected.to validate_presence_of(:name) }
  end
  describe "#ticker" do
    it { is_expected.to validate_presence_of(:ticker) }
  end
  describe "#hard_cap" do
    it { is_expected.to validate_presence_of(:hard_cap) }
  end
  describe "#precision" do
    it { is_expected.to validate_presence_of(:precision) }
  end
  describe "#user" do
    it { should belong_to(:user) }
  end
end
