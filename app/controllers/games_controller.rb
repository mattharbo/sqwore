class GamesController < ApplicationController
  def index
    @games=Game.all
  end

  def show

  end

  def new

  end

  def create
      # Date.today pour récupérer la date du jour en Ruby et la save dans ActiveRecord
  end
end
