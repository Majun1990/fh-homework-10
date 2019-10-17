require 'rails_helper'

RSpec.describe Team, type: :model do
  context 'validation tests' do
    it 'ensures team name presence' do
      team = Team.new(name: '').save
      expect(team).to eq(false)
    end
    it 'should save successfully' do 
      team = Team.new(name: 'Team').save
      expect(team).to eq(true)
    end
  end
end
