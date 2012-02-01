class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :rating
      t.string :comment
      t.date :release

      t.timestamps
    end
  end
end
