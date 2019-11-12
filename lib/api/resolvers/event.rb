require_relative 'base'
require_relative '../../models/event'
require_relative '../types/event'

module Resolvers
  class Event < Resolvers::Base
    type Types::Event, null: false

    argument :id, ID, required: true

    def resolve(id:)
      ::Event.find(id)
    end
  end
end
