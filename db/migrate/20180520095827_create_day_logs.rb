class CreateDayLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :day_logs do |t|
      t.integer :steps, default: 0
      t.date :taken_on, null: false

      t.timestamps
    end
  end
end
