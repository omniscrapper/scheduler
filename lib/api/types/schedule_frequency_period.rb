require_relative 'base_enum'
require_relative '../../models/schedule'

module Types
  class ScheduleFrequencyPeriod < Types::BaseEnum
    periods = ::Schedule::FREQUENCY_PERIODS

    description "Enum periods: #{periods}"

    periods.each do |period|
      value period.to_s, value: period
    end
  end
end
