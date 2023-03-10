class AddDefaultToScore < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users_games, :score, 0
  end
end
