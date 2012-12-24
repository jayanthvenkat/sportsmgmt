class Player < ActiveRecord::Base
  belongs_to :team_player_assoc
  attr_accessible :battingOrientation, :bowlingOrientation, :imageUrl, :isWicketkeeper, :name, :password, :username
end
