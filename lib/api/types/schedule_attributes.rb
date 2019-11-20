require_relative 'base_input'
require_relative 'schedule_frequency_period'

module Types
  class ScheduleAttributes < Types::BaseInput
    description "Attributes for updating or creating an schedule"

    argument :name, String, required: false
    argument :task_id, Integer, required: false
    argument :frequency_quantity, Integer, required: false
    argument :frequency_period, Types::ScheduleFrequencyPeriod, required: false
  end
end
