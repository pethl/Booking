class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.integer :account_id, null: false, default: false
      t.string :name, null: false, default: false
      t.string :location
      t.string :website
      t.string :primary_contact
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
