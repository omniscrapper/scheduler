require_relative '../lib/api/schema'

module Api
  class App < Sinatra::Base
    post '/graphql' do
      result = ApiSchema.execute(
        params[:query],
        variables: params[:variables]
      )
      json result
    end
  end
end
