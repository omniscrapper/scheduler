class CreateEvent < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.integer :task_id, null: false
    end
  end
end
