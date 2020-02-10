require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'when I visit root, select Gryffindor, and click search' do
    before(:each) do
      visit '/'
      select 'Gryffindor', from: 'house'
      click_on 'Search For Members'
    end

    it 'Then I should be on page “/search”' do
      expect(current_path).to eq('/search')
    end

    it 'Then I should see a total of the number of members for that house. (21 for Gryffindor)' do
      expect(page).to have_content("Total Order Members Found: 21")
    end

    describe 'And I should see a list of Gryffindor members, and for each I should see' do
      it 'The name of the member' do
        require "pry"; binding.pry
        page.all('.member').each do |member|
          require "pry"; binding.pry
        end
      end

      it 'The name of the member' do
      end

      it 'The members role (if it exists)' do
      end

      it 'The house the member belongs to' do
      end

      it 'The Patronus of the member (if it exists)' do
      end
    end
  end
end
