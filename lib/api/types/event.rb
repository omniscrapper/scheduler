require_relative 'base'

module Types
  class Event < Types::Base
    field :id, ID, null: false
    field :task_id, Integer, null: false
    field :name, String, null: false
  end
end

