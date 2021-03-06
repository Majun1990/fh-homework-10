require "rails_helper"
module API
  describe GamesController, type: :routing do
    describe "routing" do
      it "routes to #index" do
        expect(:get => "/api/games").to route_to("api/games#index")
      end

      it "routes to #show" do
        expect(:get => "/api/games/1").to route_to("api/games#show", :id => "1")
      end


      it "routes to #create" do
        expect(:post => "/api/games").to route_to("api/games#create")
      end

      it "routes to #update via PUT" do
        expect(:put => "/api/games/1").to route_to("api/games#update", :id => "1")
      end

      it "routes to #update via PATCH" do
        expect(:patch => "/api/games/1").to route_to("api/games#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/api/games/1").to route_to("api/games#destroy", :id => "1")
      end
    end
  end
end