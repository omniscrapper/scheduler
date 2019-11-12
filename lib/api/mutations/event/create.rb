require_relative '../base'
require_relative '../../../models/event'

module Mutations
  module Event
    class Create < Mutations::Base
      argument :name, String, required: true
      argument :task_id, Integer, required: true

      field :success, Boolean, null: false
      field :errors, [String], null: false

      def resolve(name:, task_id:)
        event = ::Event.new(name: name, task_id: task_id)

        if event.save
          {
            success: true,
            errors: []
          }
        else
          {
            success: false,
            errors: event.errors.full_messages
          }
        end
      end
    end
  end
end
