class AddGameToThisWeek < ActiveRecord::Migration
  def change
    add_column :this_weeks, :game_id, :integer
  end
end
