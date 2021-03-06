class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.string :hometown
      t.boolean :github_login, default: false

      t.timestamps
    end
  end
end
