require 'rails_helper'

RSpec.describe Invitation, type: :model do
  describe 'validations' do
    let(:invitation) { FactoryBot.build(:user).invitations.build }
    it 'should have an attendee' do
      invitation.atendee = nil
      expect(invitation).to_not be_valid
    end

    it 'should have an attended_event' do
      invitation.attended_event = nil
      expect(invitation).to_not be_valid
    end
  end
end
