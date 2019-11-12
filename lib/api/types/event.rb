require_relative 'base'
require_relative 'event_frequency_period'

module Types
  class Event < Types::Base
    field :id, ID, null: false
    field :task_id, Integer, null: false
    field :name, String, null: false
    field :frequency_quantity, Integer, null: false
    field :frequency_period, Types::EventFrequencyPeriod, null: false
  end
end

