# frozen_string_literal: true

# This program creates a clock that is independent of date.
class Clock
  def self.at(h, m = 0)
    Clock.new(h, m)
  end

  def initialize(h, m)
    @h = h
    @m = m
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    format('%02d:%02d', @h, @m)
  end

  def +(min)
    hour, min = (@m + min).divmod(60)
    @h = (@h + hour) % 24
    @m = min
    Clock.new(@h, @m)
  end

  def -(min)
    min = @h * 60 + @m - min
    @h, @m = min.divmod(60)
    @h += 24 while @h.negative?
    Clock.new(@h, @m)
  end
end
