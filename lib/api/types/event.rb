require_relative 'base'

class Types::Event < Types::BaseObject
  field :id, ID, null: false
  field :task_id, Integer, null: false
  field :name, String, null: false
end
