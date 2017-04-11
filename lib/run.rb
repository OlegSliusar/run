# lib/run.rb

class Run
  require 'date'
  
  def initialize(input)
    @run_data = input
    @run_data[:timestamp] = DateTime.parse(@run_data[:timestamp])
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
