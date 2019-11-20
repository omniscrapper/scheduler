Sequel.migration do
  change do
    create_table(:schedules) do
      primary_key :id
      String :name, null: false
      Integer :task_id, null: false
      Integer :frequency_period, null: false
      Integer :frequency_quantity, null: false
    end
  end
end
