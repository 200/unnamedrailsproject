require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe '#email' do
    it { is_expected_to validate_presence_of(:email) }
  end
end
