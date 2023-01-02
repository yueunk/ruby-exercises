# frozen_string_literal: true

require 'date'
# This program constructs a meetup date.
class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    weekday = (weekday.downcase + '?').to_sym
    selected_days = Date.new(@year, @month).step(Date.new(@year, @month, -1)).select(&weekday)

    idx = to_idx(schedule)
    idx -= 1 if schedule.downcase == 'teenth' && selected_days.first.day > 5
    selected_days[idx]
  end

  private

  # rubocop:disable Metrics/CyclomaticComplexity
  def to_idx(schedule)
    case schedule.downcase
    when 'first' then 0
    when 'second' then 1
    when 'third' then 2
    when 'fourth' then 3
    when 'fifth' then 4
    when 'last' then -1
    when 'teenth' then 2
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
