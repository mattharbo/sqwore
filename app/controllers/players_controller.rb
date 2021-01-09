class PlayersController < ApplicationController

  def index
    @players=Player.all
  end

  def new
    @newplayer=Player.new
  end

  def create
    Player.create(player_params)
	  redirect_to new_participation_path
  end

  private

  def player_params
  	params.require(:player).permit(:forename, :surname)
  end

end
