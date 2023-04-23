class AddNullToCustbooks < ActiveRecord::Migration[7.0]
  def change
    remove_column(:custbooks, :cancelled_at)
    remove_column(:custbooks, :cancelled_by_id)
  end
end
