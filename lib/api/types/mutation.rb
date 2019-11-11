require_relative 'base_object'
require_relative '../mutations/create_event'

module Types
  class Mutation < Types::BaseObject
    field :createEvent, mutation: Mutations::CreateEvent
  end
end
