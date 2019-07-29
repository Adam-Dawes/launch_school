# write a method that takes two Array arguments in which
# each Array contains a list of numbers, and returns a new
# Array that contains the product of each pair of numbers
# from the arguments that have the same index. Assume they
# have the same number of elements

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# create method multiply_list with two params, array1 and array2
# use #zip on array1 with array2 as the argument
# iterate over result with map, calling inject(:*) in the block to the elements

def multiply_list(array1, array2)
  array1.zip(array2).map { |elem| elem.inject(:*) }
end
