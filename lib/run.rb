# lib/run.rb
class Run
  def initialize(input)
    @run_data = input
  end

  def duration
    @run_data[:duration]
  end

  def distance
    @run_data[:distance]
  end

  def timestamp
    @run_data[:timestamp]
  end
end
