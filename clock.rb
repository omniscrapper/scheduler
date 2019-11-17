require 'clockwork'
require 'clockwork/database_events'
require 'active_support/time'
require 'active_record'
require 'sidekiq'
require './lib/schedule/resolver'
require './lib/workers/scrapping'
require './lib/models/event'

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL') }
end

# TODO: Let's get rid of ActiveRecord and create a Sequel model
ActiveRecord::Base.establish_connection ENV.fetch('DATABASE_URL')

module Clockwork
  Clockwork.manager = DatabaseEvents::Manager.new

  sync_database_events model: ::Event, every: 1.minutes do |event|
    Workers::Scrapping.perform_async(event.task_id)
  end
end
