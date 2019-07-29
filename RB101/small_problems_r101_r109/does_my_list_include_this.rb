# write a method named include? that takes an Array and a search value.
# The method should return true if the search value is in the Array.
# You may not use Array#include?

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# create method include? which takes 2 arguments, array and value
# create variable index = 0
# loop over array
# if array[index] == value then true and break
# index += 1
# break if index == array.size

def include?(array,value)
  index = 0
  result = false

  loop do
    result = true if array.fetch(index){false} == value
    index += 1
    break if index >= array.size
  end
  result
end

def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end
