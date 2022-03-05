class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.integer :player_one_id
      t.integer :player_two_id
      t.integer :player_one_game_score
      t.integer :player_two_game_score
      t.integer :player_one_set_score
      t.integer :player_two_set_score
      t.integer :player_one_match_score
      t.integer :player_two_match_score
      t.string :player_one_name
      t.string :player_two_name
      t.integer :sets
      t.integer :games
      t.date :date

      t.timestamps
    end
    add_index :matches, :player_one_id
    add_index :matches, :player_two_id
  end
end
