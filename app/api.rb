require_relative 'api/event_app'

module Api
  class App < Sinatra::Base
    use Api::EventApp
  end
end
