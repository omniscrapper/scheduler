require_relative '../base'
require_relative '../../../models/schedule'
require_relative '../../types/schedule'
require_relative '../../types/schedule_attributes'

module Mutations
  module Schedule
    class Update < Mutations::Base
      description "Process of updating schedule"

      argument :id, ID, required: true
      argument :attributes, Types::ScheduleAttributes, required: true

      field :schedule, Types::Schedule, null: true
      field :errors, [String], null: true

      def resolve(id:, attributes:)
        schedule = ::Schedule[id]

        if schedule.update(attributes.to_h)
          { schedule: schedule }
        else
          { errors: schedule.errros.full_messages }
        end
      end
    end
  end
end
