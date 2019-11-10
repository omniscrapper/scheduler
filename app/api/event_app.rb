require_relative 'base'

module Api
  class EventApp < Api::Base
    get '/events' do
      'it works'
    end
  end
end
