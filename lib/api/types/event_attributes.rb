require_relative 'base'

module Types
  class EventAttributes < Types::Base
    argument :name, String, required: true
    argument :task_id, Integer, required: true
  end
end
