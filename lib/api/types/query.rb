require_relative 'base_object'
require_relative 'event'

module Types
  class Query < Types::BaseObject
    field :events, [Types::Event], null: false do
      description 'Get all events'
    end

    def events
      Event.all
    end
  end
end
