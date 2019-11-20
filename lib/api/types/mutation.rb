require_relative 'base'
require_relative '../mutations/schedule/create'
require_relative '../mutations/schedule/update'
require_relative '../mutations/schedule/destroy'

module Types
  class Mutation < Types::Base
    field :createSchedule, mutation: Mutations::Schedule::Create
    field :updateSchedule, mutation: Mutations::Schedule::Update
    field :destroySchedule, mutation: Mutations::Schedule::Destroy
  end
end
