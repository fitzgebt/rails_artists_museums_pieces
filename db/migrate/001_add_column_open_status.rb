class AddColumnOpenStatus < ActiveRecord::Migration[5.2]
    def change
      add_column :museums, :open_status, :boolean, default: true
    end
  end
  