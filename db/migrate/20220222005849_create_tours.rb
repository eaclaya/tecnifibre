class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
