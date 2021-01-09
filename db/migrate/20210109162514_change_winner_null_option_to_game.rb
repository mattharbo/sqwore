class ChangeWinnerNullOptionToGame < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:games, :winner_id, true)
  end
end
