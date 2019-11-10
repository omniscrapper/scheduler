require 'sinatra'
require 'sinatra/activerecord'

require_relative 'app/api'

class App < Sinatra::Base
  set :database_file, 'config/database.yml'

  use Api::App
end
