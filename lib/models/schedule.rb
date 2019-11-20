class Schedule < Sequel::Model
  FREQUENCY_PERIODS = [:seconds, :days, :months, :years].freeze

  plugin :validation_helpers
  plugin :enum
  enum :frequency_period, FREQUENCY_PERIODS

  def frequency
    frequency_quantity.send(frequency_period.to_sym)
  end

  def validate
    super
    validates_presence [:name, :task_id, :frequency_period, :frequency_quantity]
  end

  def attributes
    values
  end
end
