require_relative '../base'
require_relative '../../../models/event'
require_relative '../../types/event'

module Resolvers
  module Event
    class Show < Resolvers::Base
      type Types::Event, null: false

      argument :id, ID, required: true

      def resolve(id:)
        ::Event[id]
      end
    end
  end
end
