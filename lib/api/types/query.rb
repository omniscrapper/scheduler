require_relative 'base'
require_relative 'event'

class Types::Query < Types::BaseObject
  field :events, [Types::Event], null: false do
    description 'Get all events'
  end

  def events
    Event.all
  end

end
