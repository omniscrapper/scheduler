require_relative 'base'
require_relative 'schedule_frequency_period'

module Types
  class Schedule < Types::Base
    field :id, ID, null: false
    field :task_id, Integer, null: false
    field :name, String, null: false
    field :frequency_quantity, Integer, null: false
    field :frequency_period, Types::ScheduleFrequencyPeriod, null: false
  end
end
