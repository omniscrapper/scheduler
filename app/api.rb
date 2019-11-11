require_relative 'api/event_app'
require_relative '../lib/api/schema'

module Api
  class App < Sinatra::Base
    post '/' do
      result = ApiSchema.execute(
        params[:query],
        variables: params[:variables]
      )
      json result
    end

    use Api::EventApp
  end
end
