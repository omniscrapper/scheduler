require_relative '../base'
require_relative '../../../models/schedule'
require_relative '../../types/schedule'
require_relative '../../types/schedule_attributes'

module Mutations
  module Schedule
    class Create < Mutations::Base
      description "Process of creating schedule"

      argument :attributes, Types::ScheduleAttributes, required: true

      field :schedule, Types::Schedule, null: true
      field :errors, [String], null: true

      def resolve(attributes:)
        schedule = ::Schedule.new(attributes.to_h)

        if schedule.save
          { schedule: schedule }
        else
          { errors: schedule.errors.full_messages }
        end
      end
    end
  end
end
