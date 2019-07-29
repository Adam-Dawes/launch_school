# What is the return value of the #select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# #select evaluates the truthiness of the return value, if something is neither false or nil
# than it is truthy. 'hi', which is the last evaluated line, is truthy therefore it returns [1,2,3]
# as all 3 evaluate to truthy

#####

# How does #count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# #count counts the number of elements in the block that returns a true value and returns that number
# If you're unsure how a method works, refer to Ruby Docs and the Array#count method

#####

# What is the return value of #reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# #reject returns a new array of elements that evaluate to not being true. #puts evaluates to nil,
# and because it is the last code run all elements return nil therefore returning [1, 2, 3]

#####

# what is the return calue of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# #each_with_object will iterate over each element and return it in the object provided as an argument
# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

#####

# what does #shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Ruby Docs for Hash#shift
# #shift will remove and return the element as an array

#####

# What is the block's return value in the following code? How is it determined? Also, what
# is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The return value will be true. #any? returns true or false if at least 1 element returns true.
# As #odd? is the last line evaluated in the block, if there is any odd numbers there will be a true return
# causing #any? to return true.
# #any? stops iterating after it gets a true value so the output will only be 1 as it never evalutes the code for any other elements.

#####

# How does #take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# #take will return as many elements from the array as passed in the argument. It is not destrucive
# and you can clarify in Ruby Docs.

#####

# What is the return value of map in the following code and why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# The return value will be an array of the elements that return true once evaluated by the block.
# The return will be [nil, 'bear'] as it's the only element that evaluated to true

#####

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# This will return [1, nil, nil]. #map will return a new array that contains either nil or the elements 
# that evaluated to true within the block. If the num > 1 the num is puts which returns false. 
# If the num <= 1, it evaluates as true





