class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :imageUrl
      t.string :battingOrientation
      t.string :bowlingOrientation
      t.boolean :isWicketkeeper
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
