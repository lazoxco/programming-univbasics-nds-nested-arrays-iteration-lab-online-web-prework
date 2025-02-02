def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  # string_array = []
  # row_index = 0 
  
  # while row_index < src.count do 
  #   element_index = 0 
    
  #   while element_index < src.count do
      
  #     string_array << "I love #{src[row_index][element_index]} and #{src[row_index][element_index]} on my pizza"
      
  #     element_index += 1
  #   end 
    
  #   row_index += 1
  # end
  # string_array
  
  string_array = []
  
  
  src.each do |food|
    string_array << "I love #{food[0]} and #{food[1]} on my pizza"
  end
  
  string_array
end


# join_ingredients(ingredients_array)

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  large_nums = []
  
  # src.each do |numbers|
  #   if numbers[0] > numbers[1]
  #     large_nums << numbers[0]
  #   else 
  #     large_nums << numbers[1]
  #   end
  # end
  
  # src.each do |numbers|
  #   large_nums << numbers.max
  # end
  
  src.each { |numbers| large_nums << numbers.max }
  
  large_nums
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  total = 0 
  
  # src.each do |numbers|
  #   if numbers[0] % 2 == 0 && numbers[1] % 2 == 0
  #     total += numbers[0] + numbers[1]
  #   end
    
  # end
  
  src.each do |numbers|
    if numbers[0].even? && numbers[1].even?
      total += numbers[0] + numbers[1]
    end
  end
  
  total
end
