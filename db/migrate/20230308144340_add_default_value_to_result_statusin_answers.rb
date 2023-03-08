class AddDefaultValueToResultStatusinAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :answers, :result_status, "pending"
  end
end
