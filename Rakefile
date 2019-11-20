require './sequel'
require 'sequel/extensions/migration'

namespace :db do
  desc "Run database migrations"
  task :migrate, :env do |cmd, args|
    Sequel::Migrator.apply(DB, "db/migrate")
  end

  desc "Nuke the database (drop all tables)"
  task :nuke, :env do |cmd, args|
    DB.tables.each do |table|
      DB.run("DROP TABLE #{table}")
    end
  end

  desc "Reset the database"
  task :reset, [:env] => [:nuke, :migrate]
end
