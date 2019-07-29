# Write a method that determines and returns the ASCII string value of a string.
# The ASCII string value is the sum of the ASCII value of each char in the string.
# You can use .ord to determine the ASCII value of a char.

# define a method ascii_value that takes an argument called str
# enable variable result = 0
# iterate over str with each_char where result =+ elem.ord
# call result

def ascii_value(str)
  result = 0
  str.each_char { |elem| result += elem.ord }
  result
end

#What method can slot in for ??? => str.ord.??? == str
# str.ord.chr == str