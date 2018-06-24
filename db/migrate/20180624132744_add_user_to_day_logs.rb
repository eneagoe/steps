class AddUserToDayLogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :day_logs, :user, foreign_key: true, null: false
  end
end
