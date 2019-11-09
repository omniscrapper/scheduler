module Workers
  class Scrapping
    include Sidekiq::Worker

    sidekiq_options queue: :scrapping

    def perform(task_id); end
  end
end
