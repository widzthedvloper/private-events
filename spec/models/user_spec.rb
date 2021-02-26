require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { FactoryBot.build(:user) }
    it 'should have an email' do
      user.email = nil
      expect(user).to_not be_valid
    end
  end

  describe 'associations' do
    it { should have_many(:events).without_validating_presence }

    it { should have_many(:invitations).without_validating_presence }

    it { should have_many(:attended_event).without_validating_presence }
  end
end
