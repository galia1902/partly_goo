class AddColorToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :color, :string
  end
end
