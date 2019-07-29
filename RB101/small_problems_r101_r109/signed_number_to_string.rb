# Write a method that takes an integer and converts it to a string.
# If the number is positive it shows with a +, if its negative it
# shows a -. if 0 then just 0.

# Enter previous string_to_integer method and DIGIT constant.
# def method signed_string_to_integer with takes a Integer argument called num
# create new variable result = ''
# if num == 0 then result = integer_to_string(num)
# elsif num > 0 then result = '+' + integer_to_string(num)
# else result = '-' + integer_to_string(num)
# call result

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(num)
  result = ''
  if num == 0
    result = integer_to_string(num)
  elsif num > 0
    result = '+' + integer_to_string(num)
  else
    num *= -1 
    result = '-' + integer_to_string(num)
  end

  result
end

# course solution

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

# refactor to reduce the 3 integer_to_string to 1

def signed_integer_to_string(number)
  result = ""

  case number <=> 0
  when -1 then result.prepend('-')
    number *= -1
  when +1 then result.prepend('+')
  else
  end

  result << integer_to_string(number)
end