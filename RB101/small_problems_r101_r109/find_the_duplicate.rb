# given an unordered array and that only one value will appear twice,
# determine which value occurs twice and return that value.

# find_dup([1, 5, 3, 1]) == 1

# create method find_dup which takes an Array called array
# create variable checked which is an empty Array
# create variable result = 0
# iterate over array with each
# if the elem is in checked, result = elem otherwise push into checked
# call result

def find_dup(array)
  checked = []
  result = 0
  array.each do |elem|
    checked.include?(elem) ? result = elem : checked << elem
  end
  result
end

def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end
