require_relative '../client'

module Api
  module Queries
    # Simple GQL query to get list of possible tasks to run
    class AllTasks
      Query = Api::Client.parse <<-'GRAPHQL'
        query {
          tasks {
            id
          }
        }
      GRAPHQL

      def call
        # TODO: handle http errors here
        result = Api::Client.query(Query)
      end
    end
  end
end
