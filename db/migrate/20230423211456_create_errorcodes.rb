class CreateErrorcodes < ActiveRecord::Migration[7.0]
  def change
    create_table :errorcodes do |t|
      t.string :ref
      t.string :msg
      t.text :desc

      t.timestamps
    end
  end
end
