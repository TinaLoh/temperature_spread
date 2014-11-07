class ClassDataAnalysis

  def initialize(data)
    @data = data
  end

#@data = ArrayDataAnalysis.new(data)

#we have an array of tempdata objects
#we need a method to access the data inside the tempdate objects

#@data[0].low

  def lowest_temperature
    lowt = @data.map {|day| day.low}
    lowt.sort.min
  end

  def highest_temperature
    hight = @data.map {|day| day.high}
    hight.sort.max
  end

  def day_of_lowest_temperature
    # find the lowest temperature
    lt = lowest_temperature
    # get the index in the month with the lowest temperature
    i = @data.find_index{|i| i.low == lt}
    # get the day value of that index
    @data[i].day
  end

  def day_of_highest_temperature
    ht = highest_temperature
    i = @data.find_index{|i| i.high == ht}
    @data[i].day
  end

  def average_temperatures
     length = @data.map {|day| puts day}

     avg_temperatures = @data.map do |day| (day.high + day.low)/2.to_f
     end
  end

end
