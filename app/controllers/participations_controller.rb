class ParticipationsController < ApplicationController

  def new
    @participation=Participation.new
    @registeredplayers=Player.all
  end

  def create

    # Create a new game
    Game.create(date:Date.today)

    # Retrieve the latest game created
    latest_game=Game.last

    # Create a participation for each of the selected players
    params["participation"]["player"].each do |warrior|

      Participation.create(
        game:latest_game,
        player:Player.find(warrior.to_i)
      )

    end

    # Redirection to [to be defined]
    redirect_to root_path

  end

end
