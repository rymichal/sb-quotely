class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :one
      t.string :two
      t.string :three
      t.references :episode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
