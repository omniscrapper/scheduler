require 'graphql'
require_relative 'base'

class Types::Event < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :type_id, Integer, null: false
end
