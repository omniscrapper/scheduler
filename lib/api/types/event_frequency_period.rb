require_relative 'base_enum'
require_relative '../../models/event'

module Types
  class EventFrequencyPeriod < Types::BaseEnum
    periods = ::Event::FREQUENCY_PERIODS

    description "Enum periods: #{periods}"

    periods.each do |period|
      value period.to_s, value: period
    end
  end
end
