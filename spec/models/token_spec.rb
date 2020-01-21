require 'rails_helper'

RSpec.describe Token, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe '#name' do
    it { is_expected_to validate_presence_of(:name) }
  end
  describe '#ticker' do
    it { is_expected_to validate_presence_of(:ticker) }
  end
  describe '#hard_cap' do
    it { is_expected_to validate_presence_of(:hard_cap) }
  end
  describe '#precision' do
    it { is_expected_to validate_presence_of(:precision) }
  end
  describe '#owner' do
    it { is_expected_to validate_presence_of(:owner) }
  end
end
