class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :game_mode
      t.references :user, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
