require 'rails_helper'

RSpec.describe PotterApiService do
  describe 'public methods' do
    describe 'get_members_for_house' do
      it 'returns an array of Member objects for given house' do
        members = PotterApiService.new.get_members_for_house('Gryffindor')

        expect(members).to be_instance_of(Array)
        expect(members.length).to eq(21)
        members.each do |member|
          expect(member).to be_instance_of(Member)
        end
      end
    end
  end
end
