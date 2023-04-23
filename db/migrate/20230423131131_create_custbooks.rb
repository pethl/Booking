class CreateCustbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :custbooks do |t|
      t.references :restaurant_id
      t.datetime :booking_date_time
      t.integer :number_of_diners, null: false
      t.boolean :accessible, null: false, default: false
      t.integer :highchair, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :status, null: false
      t.string :source, null: false
      t.datetime :cancelled_at, null: false
      t.references :cancelled_by, null: false
      t.text :notes

      t.timestamps
    end
  end
end
