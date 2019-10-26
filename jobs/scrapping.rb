class Scrapping
  def self.run
    ScrapperWorker.perform_async
  end
end

class ScrapperWorker
  include Sidekiq::Worker
end


