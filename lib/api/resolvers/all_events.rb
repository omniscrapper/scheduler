require_relative 'base'
require_relative '../../models/event'
require_relative '../types/event'

module Resolvers
  class AllEvents < Resolvers::Base
    type [Types::Event], null: false

    def resolve
      Event.all
    end
  end
end
