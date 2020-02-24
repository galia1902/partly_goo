class RemoveDurationFromRound < ActiveRecord::Migration[5.2]
  def change
    remove_column :rounds, :duration
    add_column :rounds, :duration, :integer
  end
end
