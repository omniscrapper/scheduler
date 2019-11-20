require 'graphql'
require_relative 'types/query'
require_relative 'types/mutation'

class ApiSchema < GraphQL::Schema
  query Types::Query
  mutation Types::Mutation
end
