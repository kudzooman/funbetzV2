class CreateThisWeeks < ActiveRecord::Migration
  def change
    create_table :this_weeks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
