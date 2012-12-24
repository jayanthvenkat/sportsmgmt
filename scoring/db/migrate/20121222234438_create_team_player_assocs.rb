class CreateTeamPlayerAssocs < ActiveRecord::Migration
  def change
    create_table :team_player_assocs do |t|
      t.integer :team_id
      t.integer :player_id

      t.timestamps
    end
  end
end
