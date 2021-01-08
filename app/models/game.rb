class Game < ApplicationRecord
  belongs_to :winner, :class_name => "Player"
end
