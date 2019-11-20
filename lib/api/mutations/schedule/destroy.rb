require_relative '../base'
require_relative '../../../models/schedule'

module Mutations
  module Schedule
    class Destroy < Mutations::Base
      description "Process of destroying schedule"

      argument :id, ID, required: true

      field :success, Boolean, null: false
      field :errors, [String], null: true

      def resolve(id:)
        schedule = ::Schedule.find(id)

        if schedule.destroy
          { success: true }
        else
          { success: false, errors: schedule.errors.full_messages }
        end
      end
    end
  end
end
