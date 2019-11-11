require_relative 'base_object'

module Types
  class Event < Types::BaseObject
    field :id, ID, null: false
    field :task_id, Integer, null: false
    field :name, String, null: false
  end
end

