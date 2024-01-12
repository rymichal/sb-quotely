class ChangeNumberToFloatInEpisodes < ActiveRecord::Migration[7.0]
  def change
    change_column :episodes, :episode, :float
  end
end
