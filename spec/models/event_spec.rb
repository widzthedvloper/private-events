require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    let(:event) { FactoryBot.build(:event) }
    it 'should have a name' do
      event.name = nil
      expect(event).to_not be_valid
    end

    it 'should have a description' do
      event.description = nil
      expect(event).to_not be_valid
    end

    it 'should have a creator' do
      event.creator = nil
      expect(event).to_not be_valid
    end
  end
end
