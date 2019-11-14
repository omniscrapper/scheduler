require_relative 'base_enum'
require_relative '../../models/event'

module Types
  class EventFrequencyPeriod < Types::BaseEnum
    periods = ::Event.frequency_periods.values

    description "Enum periods: #{periods}"

    periods.each do |period|
      value period
    end
  end
end
