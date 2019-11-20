require_relative '../base'
require_relative '../../../models/schedule'
require_relative '../../types/schedule'

module Resolvers
  module Schedule
    class All < Resolvers::Base
      type [Types::Schedule], null: false

      def resolve
        ::Schedule.all
      end
    end
  end
end
