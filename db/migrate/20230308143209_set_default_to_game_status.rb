class SetDefaultToGameStatus < ActiveRecord::Migration[7.0]
  def change
    change_column_default :games, :status, "unstarted"
  end
end
