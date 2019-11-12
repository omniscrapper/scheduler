require_relative 'base_object'
require_relative '../resolvers/event/all'
require_relative '../resolvers/event/show'

module Types
  class Query < Types::BaseObject
    field :events, resolver: Resolvers::Event::All
    field :event, resolver: Resolvers::Event::Show
  end
end
