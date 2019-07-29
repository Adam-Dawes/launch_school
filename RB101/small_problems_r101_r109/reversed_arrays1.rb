# write a method that takes an Array and reverses its elements in place
# the return value should be the same Array object

# create method reverse! that takes an Array argument array
# create variable size which is how many elements are in the array
# create another array called dummy_array
# iterate over array, pushing each elem into dummy_array
# clear array
# using size and #times push the last index of dummy_array into array
# and remove the last index of dummy_array

def reverse!(array)
  size = array.size
  dummy_array = []
  array.each { |elem| dummy_array << elem }
  array.clear
  size.times do
    array << dummy_array[-1]
    dummy_array.pop
  end
  array
end
