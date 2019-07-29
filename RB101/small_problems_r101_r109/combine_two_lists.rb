# write a method that combines two Arrays passed in as argument
# and returns a new Array that contains all elements from both Array 
# arguments taken in alternation.
# You may assume they have the same number of elements

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# create method interleave which takes 2 arguments, array1 and array2
# created variable new_array = []
# index = 0
# begin loop
# push array1[index] into new_array
# push array2[index] into new_array
# index += 1
# break when index is equal or greater than to array1 size - 1
# end loop
# call new_array

def interleave(array1, array2)
  new_array = []
  index = 0
  loop do
    break if index >= array1.size
    new_array << array1[index]
    new_array << array2[index]
    index += 1
  end
  new_array
end

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

def interleave(array1, array2)
  new_array = array1.zip(array2).flatten
end
