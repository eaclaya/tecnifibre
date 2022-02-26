class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.integer :ranking
      t.integer :points
      t.belongs_to :player, foreign_key: true, index: true
      t.belongs_to :tour, foreign_key: true, index: true
      t.timestamps
    end
  end
end
