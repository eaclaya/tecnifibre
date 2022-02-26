class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :ranking
      t.integer :age
      t.integer :points
      t.integer :tours_count
      t.integer :weight
      t.integer :height
      t.string :nacionality

      t.timestamps
    end
  end
end
