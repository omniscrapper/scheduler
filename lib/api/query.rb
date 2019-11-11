require 'graphql'
require_relative 'queries/all_events'

class QueryType < GraphQL::Schema::Object
  field :allEvents, query: Query::AllEvents
end
