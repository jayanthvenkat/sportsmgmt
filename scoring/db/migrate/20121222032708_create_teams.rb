class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :ownerName
      t.string :managerName
      t.string :captainName

      t.timestamps
    end
  end
end
