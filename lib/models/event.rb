class Event < ActiveRecord::Base
  validates :name, :task_id, presence: true
end
