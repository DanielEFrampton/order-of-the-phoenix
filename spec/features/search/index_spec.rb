require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'when I visit root, select Gryffindor, and click search' do
    before(:each) do
      @members = PotterApiService.new.get_members_for_house('Gryffindor')

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
      it 'The name, role (optional), house, and patronus (optional) of the member' do
        page.all('.member').each_with_index do |member, index|
          within member do
            expect(page).to have_content(@members[index].name)
            if @members[index].patronus
              expect(page).to have_content(@members[index].patronus)
            end
            if @members[index].role
              expect(page).to have_content(@members[index].role)
            end
            expect(page).to have_content(@members[index].house)
          end
        end
      end
    end
  end
end
