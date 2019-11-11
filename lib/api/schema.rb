require 'graphql'
require_relative 'types/query'

class ApiSchema < GraphQL::Schema
  query Types::Query
end
