class PagesController < ApplicationController

  before_action :get_participants, only: [:record_two, :record_three, :record_four]

  def landing
  end

  def record_two

  end

  def record_three

  end

  def record_four

  end

  private

  def get_participants
    @participants=Participation.where(game:params[:id])
  end


end
