require_relative 'base_object'
require_relative '../resolvers/all_events'

module Types
  class Query < Types::BaseObject
    field :events, resolver: Resolvers::AllEvents
  end
end
