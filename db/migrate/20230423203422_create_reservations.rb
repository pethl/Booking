class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations, id: :uuid  do |t|
      t.references :restaurant
      t.datetime :booking_date_time, null: false
      t.integer :number_of_diners, null: false
      t.boolean :accessible, default: false
      t.integer :highchair, default: 0
      t.string :name
      t.string :email
      t.string :phone
      t.string :status
      t.string :source
      t.datetime :cancelled_at
      t.integer :cancelled_by
      t.text :notes

      t.timestamps
    end
  end
end
