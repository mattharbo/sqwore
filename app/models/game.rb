class Game < ApplicationRecord
  belongs_to :winner, :class_name => "Player", optional: true
  has_many :participations
end
