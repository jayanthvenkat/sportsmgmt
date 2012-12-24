class Team < ActiveRecord::Base
  has_many :team_player_assoc
  attr_accessible :captainName, :managerName, :name, :ownerName
end
