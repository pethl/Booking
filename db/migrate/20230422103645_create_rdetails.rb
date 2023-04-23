class CreateRdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :rdetails do |t|
      t.integer :restaurant_id, null: false, default: false
      t.integer :booking_duration
      t.integer :min_booking, null: false, default: false
      t.integer :max_booking, null: false, default: false
      t.time :last_booking_time
      t.integer :big_table_count, null: false, default: false
      t.integer :max_diners_at_current_time

      t.timestamps
    end
  end
end
