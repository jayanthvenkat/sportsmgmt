# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all
Team.create(:name => "Phoenix", :ownerName => "KU Guys", :managerName =>
"Karthik Chandramouli", :captainName => "Subash Satyan")

Team.create(:name => "Chennai Super Kings", :ownerName => "India Cements", :managerName =>
"Stephen Fleming", :captainName => "MS Dhoni")

Team.create(:name => "Bangalore Royal Challengers", :ownerName => "Vijay
Mallya", :managerName => "XXXX", :captainName => "Daniel Vettori")

Team.create(:name => "Mumbai Indians", :ownerName => "Mukesh Ambani", :managerName =>
"Nita Ambani", :captainName => "Sachin Tendulkar")
