#ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
def calculate_standard_deviation(array)
  total_sum = 0.0
  total_numbers = 0.0
  average = 0.0
  sub_array = []
  square_array = []
  sum = 0.0
  step_7 = 0.0
  # Step 1: Sum all integers & Step 2: Find the numbers of the integers in the input array
  array.each do | value |
    total_sum += value
    total_numbers += 1
  end

  # Step 3: Divide the sum of the integers (step 1) by the number of integers (step 2)
  average = (total_sum / total_numbers)

  # Step 4: Subtract each integer by the average found in step 3
  array.each do | value |
    sub_array << (value - average).round(1)
  end

  # Step 5: Take the result from step 4 and square each number
  sub_array.each do | value |
    square_array << (value * value).round(2)
  end

  # Step 6: Sum all the numbers from step 5
  square_array.each do | value |
    sum += value
  end

  # Step 7: Divide the result from step 6 by the number of integers (step 2)
  step_7 = sum.round(1) / total_numbers

  # Step 8: Divide the result from step 6 by the number of integers (step 2)
  square_result = Math.sqrt(step_7).round(2)
  square_result
end

# When you find the standard deviation, print it out

# this prints it out but I don't need after iteration 1
# p calculate_standard_deviation(ages)
