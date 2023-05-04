class CreateOpeningHours < ActiveRecord::Migration[7.0]
  def change
    create_table :opening_hours do |t|
      t.integer :day, null: false
      t.boolean :open, default: false

      t.timestamps
    end
  end
end
