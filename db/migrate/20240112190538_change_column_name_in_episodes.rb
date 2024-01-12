class ChangeColumnNameInEpisodes < ActiveRecord::Migration[7.0]
  def change
    rename_column :episodes, :episode, :episode
  end
end
