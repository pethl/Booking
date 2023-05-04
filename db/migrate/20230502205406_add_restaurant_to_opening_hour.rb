class AddRestaurantToOpeningHour < ActiveRecord::Migration[7.0]
  def change
    add_reference :opening_hours, :restaurant, null: false, foreign_key: true
  end
end
