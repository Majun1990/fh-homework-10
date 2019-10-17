require 'rails_helper'

RSpec.describe Game, type: :model do
  context 'validation tests' do
    it 'ensures game name presence' do
      game = Game.new(home_team_id: 0, away_team_id: 0).save
      expect(game).to eq(false)
    end
    
    it 'ensures home_team_id presence' do
      game = Game.new(name: '', away_team_id: 0).save
      expect(game).to eq(false)
    end
    
    it 'ensures away_team_id presence' do
      game = Game.new(name: '', home_team_id: 0).save
      expect(game).to eq(false)
    end
    
    it 'should save successfully' do 
      home_team = Team.create!(name: "Tigers")
      away_team = Team.create!(name: "Gamecocks")
      game = Game.new(name: 'Test', home_team_id: home_team.id, away_team_id: away_team.id).save
      expect(game).to eq(true)
    end
  end

end
