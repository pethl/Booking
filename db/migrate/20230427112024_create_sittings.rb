class CreateSittings < ActiveRecord::Migration[7.0]
  def change
    create_table :sittings do |t|
      t.time :start_time
      t.time :end_time
      t.belongs_to :opening_hour, null: false, foreign_key: true
      #t.references :opening_hour, null: false
      t.timestamps
    end
  end
end