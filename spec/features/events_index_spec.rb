require 'rails_helper'

RSpec.describe 'index', type: :system do
  describe 'index page' do
    it 'shows the index of events' do
      visit root_path
      expect(page).to have_content('Events')
    end
  end
end
