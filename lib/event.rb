require_relative 'standard_deviation'

class Event
  attr_reader :name, :ages

  def initialize(event_name, ages)
    @name = event_name
    @ages = ages
  end

  def max_age
    max_age = ages[0]
    @ages.each do | value |
      if(value >= max_age)
        max_age = value
      end
    end
    max_age.to_i
  end

  def min_age
    min_age = @ages[0]
    @ages.each do | value |
      if(value <= min_age)
        min_age = value
      end
    end
    min_age.to_i

  end

  def average_age
    count = 0.00
    sum = 0.00
    average = 0.00
    @ages.each do | value |
      sum += value
      count += 1
    end
    average = (sum / count)
    average.round(2)
  end

  def standard_deviation_age
    devitation = calculate_standard_deviation(@ages)
    devitation
  end

end
