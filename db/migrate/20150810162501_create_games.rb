class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :game_number
      t.string :favorite
      t.string :underdog
      t.float :spread
      t.integer :favorite_score
      t.integer :underdog_score

      t.timestamps null: false
    end
  end
end
