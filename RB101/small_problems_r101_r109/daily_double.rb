# write a method that takes a string argument and returns a new string
# that contains the original string without consecutive duplicate letters.
# You may not use squeeze or squeeze!.

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# Create method crunch that takes an argument called str
# Initiate counter = 0 and result = ''
# Initiate loop and break if counter == str.length
# Compare str[counter] to result[-1], if they're the same
# counter += 1 and next loop
# otherwise push str[counter] into result
# call result after the loop ends

def crunch(str)
  counter = 0
  result = ''
  while counter < str.length
    result << str[counter] unless str[counter] == result[-1]
    counter += 1
  end
  result
end
