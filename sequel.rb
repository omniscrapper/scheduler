require 'sequel'
require 'sequel_enum'

DB = Sequel.connect(ENV.fetch('DATABASE_URL'))
