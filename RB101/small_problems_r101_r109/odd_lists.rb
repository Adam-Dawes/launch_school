def oddities(array) # returns all elements that have an even index
  new_array = []
  array.each_with_index { |elem, idx| new_array << elem if idx.even? }
  new_array
end

def oddities(array) # returns all elements that have an odd index
  new_array = []
  array.each_with_index { |elem, idx| new_array << elem if idx.odd? }
  new_array
end

def oddities(array) # returns all elements that have an even index
  new_array = []
  count = 0
  loop do
    break if count == array.size
    new_array << array[count] if count % 2 == 0 # change this to != for odd indexes
    count += 1
  end
  new_array
end
