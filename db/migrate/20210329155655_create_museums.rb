class CreateMuseums < ActiveRecord::Migration[5.2]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :location
      t.boolean :open_status, default: true

      t.timestamps
    end
  end
end
