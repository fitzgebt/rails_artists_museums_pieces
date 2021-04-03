class AddColumnGithubLogin < ActiveRecord::Migration[5.2]
    def change
      add_column :artists, :github_login, :boolean, default: false
    end
  end
  