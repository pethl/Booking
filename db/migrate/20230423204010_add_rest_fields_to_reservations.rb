class AddRestFieldsToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :restaurants, index:true
    add_foreign_key :reservations, :restaurants
  end
end
