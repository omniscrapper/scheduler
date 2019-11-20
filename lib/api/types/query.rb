require_relative 'base'
require_relative '../resolvers/schedule/all'
require_relative '../resolvers/schedule/show'

module Types
  class Query < Types::Base
    field :schedules, resolver: Resolvers::Schedule::All
    field :schedule, resolver: Resolvers::Schedule::Show
  end
end
