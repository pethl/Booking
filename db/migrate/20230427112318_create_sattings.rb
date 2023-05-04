class CreateSattings < ActiveRecord::Migration[7.0]
  def change
    create_table :sattings do |t|
      t.time :start_time
      t.string :end_time
      t.belongs_to :opening_hour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
