require 'clockwork'
require 'active_support/time'
require 'sidekiq'
require './lib/schedule/resolver'
require './lib/workers/scrapping'

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL') }
end

module Clockwork
  handler do |job, time|
    task_ids = Schedule::Resolver.new(time).call

    task_ids.each do |task_id|
      Workers::Scrapping.perform_async(task_id)
    end
  end

  every(3.hours, 'scrapping.start')
end
