require_relative '../base'
require_relative '../../../models/schedule'
require_relative '../../types/schedule'

module Resolvers
  module Schedule
    class Show < Resolvers::Base
      type Types::Schedule, null: false

      argument :id, ID, required: true

      def resolve(id:)
        ::Schedule[id]
      end
    end
  end
end
