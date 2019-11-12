require_relative '../base'
require_relative '../../../models/event'
require_relative '../../types/event'
require_relative '../../types/event_attributes'

module Mutations
  module Event
    class Create < Mutations::Base
      argument :attributes, Types::EventAttributes, required: true

      field :event, Types::Event, null: true
      field :errors, [String], null: true

      def resolve(attributes:)
        event = ::Event.new(attributes.to_h)

        if event.save
          { event: event }
        else
          { errors: event.errors.full_messages }
        end
      end
    end
  end
end
