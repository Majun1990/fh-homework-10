require 'rails_helper'

RSpec.describe "Teams", type: :request do
  describe "GET /teams" do
    it "request list of all teams" do
      @teams = Team.all
      get api_teams_path
      expect(response).to have_http_status(200)
    end
  end
end
