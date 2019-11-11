require_relative 'base'
require_relative '../../lib/models/event'

module Api
  class EventApp < Api::Base
    get '/events' do
      Event.all.first.name
    end
  end
end
