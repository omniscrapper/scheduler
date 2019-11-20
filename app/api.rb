require 'sinatra'
require 'active_support/time'
require './sequel'
require 'sinatra/json'
require 'rack/contrib'
require_relative '../lib/api/schema'

class Api < Sinatra::Base
  use Rack::PostBodyContentTypeParser

  post '/graphql' do
    result = ApiSchema.execute(
      params[:query],
      variables: params[:variables]
    )
    json result
  end
end
