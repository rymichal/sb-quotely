class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.integer :season
      t.integer :number
      t.string :title

      t.timestamps
    end
  end
end
