class AddColumnImageDescription < ActiveRecord::Migration[5.2]
    def change
      add_column :pieces, :image_description, :string
    end
  end
  