# Create a method that takes an array of number and returns an array
# with the same amount of elements, with each element having the running
# total from the original array
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
#
# define method running_total which takes an argument thats an array
# create a variable called total_sum which is an Integer
# iterate using map as it returns a new array containing the same number of elem
# each iteration total_sum += elem

def running_total(arr)
  total_sum = 0
  arr.map { |elem| total_sum += elem }
end
