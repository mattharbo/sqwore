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

    case params["participation"]["player"].size
    when 2
      redirect_to r2_path(latest_game.id)
    when 3
      redirect_to r3_path(latest_game.id)
    when 4
      redirect_to r4_path(latest_game.id)
    end

  end

end
