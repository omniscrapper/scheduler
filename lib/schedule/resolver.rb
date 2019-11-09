require_relative '../api/queries/all_tasks'
require 'pry'

module Schedule
  # Performs all schedule calculations to build a list of tasks
  # that should be performed at current moment
  class Resolver
    def initialize(time, client = Api::Queries::AllTasks.new)
      @client = client
      @time   = time
    end

    # Retuns ids of tasks to spawn
    def call
      task_ids
    end

    private

    def task_ids
      @client
        .call
        .to_h
        .dig('data', 'tasks')
        .map { |item| item['id'] }
    end
  end
end
