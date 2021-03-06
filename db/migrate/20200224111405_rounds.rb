class Rounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :duration
      t.references :game, foreign_key: true
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
