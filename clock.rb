require 'clockwork'
require 'sidekiq'
require './jobs/scrapping'

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL") }
end

module Clockwork
  handler do |job_class|
    job_class.run
  end

  every(3.hours, Scrapping)
end
