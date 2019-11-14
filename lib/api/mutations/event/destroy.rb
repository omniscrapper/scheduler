require_relative '../base'
require_relative '../../../models/event'

module Mutations
  module Event
    class Destroy < Mutations::Base
      description "Process of destroying event"

      argument :id, ID, required: true

      field :success, Boolean, null: false
      field :errors, [String], null: true

      def resolve(id:)
        event = ::Event.find(id)

        if event.destroy
          { success: true }
        else
          { success: false, errors: event.errors.full_messages }
        end
      end
    end
  end
end
