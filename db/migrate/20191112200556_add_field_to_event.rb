class AddFieldToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :frequency_quantity, :integer, null: false
    add_column :events, :frequency_period, :string, null: false
  end
end
