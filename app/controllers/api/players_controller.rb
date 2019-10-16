module API
  class PlayersController < ApplicationController
    before_action :set_player, only: [:show, :update, :destroy]

    # GET /api/players
    def index
      players = Player.all
      render json: {status: 'success', data:players},status: 200
    end

    # GET /api/players/1
    def show
      @player = Player.find(params[:id])
      if @player.present?
        render json: {status: 'success', data:@player},status: 200
      else
        render json: {status: 'unprocessable entity', data:@player.errors},status: 422 
      end
    end

    # POST /api/players
    def create
      @player = Player.new(player_params)
      if 
        @player.save
        render json: {status: 'success', data:@player},status: 201
      else
        render json: {status: 'unprocessable entity', data:@player.errors},status: 422
      end
    end

    # PATCH/PUT /api/players/1
    def update
      @player = Player.find(params[:id])
      if 
        @player.update_attributes(player_params)
        render json: {status: 'success', data:@player},status: 200
      else
        render json: {status: 'unprocessable entity', data:@player.errors},status: 422
      end
    end

    # DELETE /api/players/1
    def destroy
      @player = Player.find(params[:id])
      if
        @player.destroy
        render json: {status: 'success', data:@player},status: 200
      else
        render json: {status: 'unprocessable entity', data:@player.errors},status: 422
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_params
      params.require(:player).permit(:first_name, :last_name, :email, :age, :position)
    end
  end
end
