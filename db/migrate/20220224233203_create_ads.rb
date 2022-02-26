class CreateAds < ActiveRecord::Migration[7.0]
  def change
    create_table :ads do |t|
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
