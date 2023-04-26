class CreateExemptions < ActiveRecord::Migration[7.0]
  def change
    create_table :exemptions do |t|
      t.datetime :exempt_dat
      t.string :exempt_msg
      t.boolean :lunch
      t.boolean :dinner

      t.timestamps
    end
  end
end
