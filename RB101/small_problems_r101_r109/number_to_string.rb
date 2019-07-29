# Write a method that takes an integer and returns a string representation
# Can't use standard conversion methods

# initilize constant variable DIGITS which contains a hash of the integers
# 0 => 9 and the value is their string counterpart
# define method integer_to_string that takes an argument(int) which is an Integer which:
# digits to split the Integer into an array of Integers
# reverse to reverse order
# iterate with map with each elem passed to DIGITS
# join the final result

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  int.digits.reverse.map { |num| DIGITS[num] }.join
end

# Course solution

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
