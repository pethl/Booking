class AddReferenceToCustbook < ActiveRecord::Migration[7.0]
  def change
    add_column :custbooks, :restaurant_id, :integer
    add_reference :custbooks, :restaurants, index:true
    add_foreign_key :custbooks, :restaurants
  end
end
