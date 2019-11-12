require_relative 'base_enum'
require_relative '../../models/event'

module Types
  class EventFrequencyPeriod < Types::BaseEnum
    periods = ::Event.frequency_periods.values

    periods.each do |period|
      value period
    end
  end
end
