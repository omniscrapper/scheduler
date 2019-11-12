class Event < ActiveRecord::Base
  validates :name, :task_id, :frequency_period, :frequency_quantity, presence: true

  enum frequency_period: {
    seconds: 'seconds',
    days: 'days',
    months: 'months',
    years: 'years'
  }

  def frequency
    frequency_quantity.send(frequency_period.to_sym)
  end
end
