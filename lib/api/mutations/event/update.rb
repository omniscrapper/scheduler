require_relative '../base'
require_relative '../../../models/event'
require_relative '../../types/event'
require_relative '../../types/event_attributes'

module Mutations
  module Event
    class Update < Mutations::Base
      description "Process of updating event"

      argument :id, ID, required: true
      argument :attributes, Types::EventAttributes, required: true

      field :event, Types::Event, null: true
      field :errors, [String], null: true

      def resolve(id:, attributes:)
        event = ::Event.find(id)

        if event.update(attributes.to_h)
          { event: event }
        else
         { errors: event.errros.full_messages }
        end
      end
    end
  end
end
