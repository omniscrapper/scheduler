require_relative 'base_input'

module Types
  class EventAttributes < Types::BaseInput
    argument :name, String, required: true
    argument :task_id, Integer, required: true
  end
end
