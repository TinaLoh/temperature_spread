class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
    lowt = @data.map {|array| array[2]}
    lowt.sort.min
  end

  # go thru each array
  # return a collection of the last
  # index in each array
  # return the lowest number in that
  # collection

  def highest_temperature
    hight = @data.map {|array| array[1]}
    hight.sort.max
  end

  def day_of_lowest_temperature
    # find the lowest temperature
    lt = lowest_temperature
    # get the index of the array with the lowest temperature
    i = @data.find_index{|t| t[2] == lt}
    # get the day of that index
    @data[i][0]
  end

  def day_of_highest_temperature
    ht = highest_temperature
    i = @data.find_index{|t| t[1] == ht}
    @data[i][0]
  end
   #what is the highest temperature
   #get the index of array with highest temperature
   #get the day of that index
  #returns the day corresponding to the highest temperature (first column in the nested array



  def average_temperatures
     length = []
     length = @data.map {|array| puts array}

     avg_temperatures = @data.map do |array| (array[1] + array[2])/2.to_f
     end
  end


  

end
