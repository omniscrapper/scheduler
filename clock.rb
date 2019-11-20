require 'clockwork'
require 'clockwork/database_events'
require 'active_support/time'
require 'sidekiq'
require './sequel'
require './lib/schedule/resolver'
require './lib/workers/scrapping'
require './lib/models/schedule'

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL') }
end

module Clockwork
  Clockwork.manager = DatabaseEvents::Manager.new

  sync_database_events model: ::Schedule, every: 15.minutes do |schedule|
    Workers::Scrapping.perform_async(schedule.task_id)
  end
end
