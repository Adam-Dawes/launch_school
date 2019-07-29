# write a method that takes an Array and returns two Arrays(nested) that
# contain the first half and second half of the original Array.
# if there's an odd number of elements, the middle gets placed in the first

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# create method halvsies that takes an argument array
# create a variable size which = the size of the array
# create new_array = []
# if size = #even, use #slice! to push array[0]..array[size/2-1]
# into new_array
# then push array into new_array
# else use #slice! to push array[0]..array[size/2] into new_array
# then push array into new_array

def halvsies(array)
  new_array = []
  size = array.size
  if size.even?
    new_array << array.slice!(0..(size / 2 - 1))
  else
    new_array << array.slice!(0..(size / 2))
  end
  new_array << array
end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end
