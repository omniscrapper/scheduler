require 'sinatra'
require 'sinatra/json'
require 'sinatra/activerecord'
require 'rack/contrib'

require_relative 'app/api'

class App < Sinatra::Base
  set :database_file, 'config/database.yml'
  use Rack::PostBodyContentTypeParser

  use Api::App
end
