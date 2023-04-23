class AddCancelledFieldsToCustbooks < ActiveRecord::Migration[7.0]
  def change
    add_column :custbooks, :cancelled_at, :datetime
    add_column :custbooks, :cancelled_by, :string
  end
end
