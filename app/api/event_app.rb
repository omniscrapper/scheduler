require_relative 'base'
require_relative '../../lib/models/event'
require_relative '../../lib/api/schema'

module Api
  class EventApp < Api::Base
    post '/events' do
      result = ApiSchema.execute(
        params[:query],
        variables: params[:variables]
      )
      json result
    end
  end
end
