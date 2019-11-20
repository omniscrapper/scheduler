require 'sequel'
require 'sequel_enum'

DB = Sequel.connect('postgresql://artemrakov:2897@localhost/omniscrapper_scheduler')
