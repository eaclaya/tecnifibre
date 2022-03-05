class AddTourToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :tour, foreign_key: true
  end
end
