# Write a method that takes an Array and returns a new Array
# with the elements in the original in reverse order. Do not
# modify the original.
def reverse(array)
  new_array = []
  counter = -1
  if array.empty?
  else
    loop do unless array.empty?
      new_array << array[counter]
      counter -= 1
      break if new_array.size >= array.size
    end
  end
  new_array
end

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

def reverse(array)
  array.inject([]) { |new_array, elem| new_array.prepend(elem) }
end

def reverse(array)
  array.each_with_object([]) { |elem,new_array| new_array.prepend(elem) }
end