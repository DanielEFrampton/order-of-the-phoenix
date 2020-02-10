require 'rails_helper'

RSpec.describe Member do
  describe 'it can initialize with readable attributes' do
    member = Member.new(name: 'Daniel Frampton',
                        house: 'Gryffindor',
                        patronus: 'Great Blue Heron',
                        role: 'Muggle Liaison')

    expect(member).to be_instance_of(Member)
    expect(member.name).to eq('Daniel Frampton')
    expect(member.role).to eq('Muggle Liaison')
    expect(member.house).to eq('Gryffindor')
    expect(member.patronus).to eq('Great Blue Heron')
  end

  describe 'it can initialize without a role' do
    member = Member.new(name: 'Daniel Frampton',
                        house: 'Gryffindor',
                        patronus: 'Great Blue Heron')

    expect(member).to be_instance_of(Member)
    expect(member.name).to eq('Daniel Frampton')
    expect(member.house).to eq('Gryffindor')
    expect(member.patronus).to eq('Great Blue Heron')
  end
end
