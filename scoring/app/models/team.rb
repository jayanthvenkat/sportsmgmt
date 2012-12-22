class Team < ActiveRecord::Base
  attr_accessible :captainName, :managerName, :name, :ownerName
end
