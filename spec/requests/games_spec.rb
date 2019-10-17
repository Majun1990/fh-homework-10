require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /games" do
    it "returns a list of games" do
      @games = Game.all
      get api_games_path
      expect(response).to have_http_status(200)
    end
  end
end
