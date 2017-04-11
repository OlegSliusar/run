# lib/run.rb

class Run
  require 'date'

  @logs = []

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
    DateTime.parse(@run_data[:timestamp])
  end

  def self.log(input)
    time = Time.now.to_i
    hash = { time => input }
    hash[time][:timestamp] = DateTime.parse(hash[time][:timestamp])
    @logs << hash
  end

  def self.count(scope = nil)
    if scope.nil?
      @logs.length
    elsif scope.keys == [:week]
      selected_logs = @logs.select do |element|
        element[element.keys.first][:timestamp].cweek == DateTime.parse(scope[:week]).cweek
      end

      selected_logs.length
    end
  end
end
