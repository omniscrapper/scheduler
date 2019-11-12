require_relative 'base_input'
require_relative 'event_frequency_period'

module Types
  class EventAttributes < Types::BaseInput
    argument :name, String, required: false
    argument :task_id, Integer, required: false
    argument :frequency_quantity, Integer, required: false
    argument :frequency_period, Types::EventFrequencyPeriod, required: false
  end
end
