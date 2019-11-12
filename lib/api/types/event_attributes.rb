require_relative 'base_input'

module Types
  class EventAttributes < Types::BaseInput
    argument :name, String, required: false
    argument :task_id, Integer, required: false
  end
end
