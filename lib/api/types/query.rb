require_relative 'base_object'
require_relative '../resolvers/all_events'
require_relative '../resolvers/event'

module Types
  class Query < Types::BaseObject
    field :events, resolver: Resolvers::AllEvents
    field :event, resolver: Resolvers::Event
  end
end
