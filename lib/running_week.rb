class RunningWeek
  require_relative 'run'
  attr_reader :runs

  def initialize(date, runs)
    raise "Day not Monday" if date.wday != 1
    @week = date.cweek
    @runs = runs
  end

  def first_run
    @runs.first
  end

  def average_distance
    @runs.inject(0.0){ |sum, el| sum + el.distance }.to_f / @runs.size
  end
end
