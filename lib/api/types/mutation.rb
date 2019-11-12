require_relative 'base_object'
require_relative '../mutations/event/create'

module Types
  class Mutation < Types::BaseObject
    field :createEvent, mutation: Mutations::Event::Create
  end
end
