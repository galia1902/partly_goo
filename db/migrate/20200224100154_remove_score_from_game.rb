class RemoveScoreFromGame < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :score, :string
  end
end
