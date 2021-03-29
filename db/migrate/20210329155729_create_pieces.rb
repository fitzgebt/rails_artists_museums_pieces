class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :year_created
      t.integer :artist_id
      t.integer :museum_id

      t.timestamps
    end
  end
end
