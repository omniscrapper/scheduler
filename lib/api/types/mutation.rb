require_relative 'base'
require_relative '../mutations/event/create'
require_relative '../mutations/event/update'
require_relative '../mutations/event/destroy'

module Types
  class Mutation < Types::Base
    field :createEvent, mutation: Mutations::Event::Create
    field :updateEvent, mutation: Mutations::Event::Update
    field :destroyEvent, mutation: Mutations::Event::Destroy
  end
end
