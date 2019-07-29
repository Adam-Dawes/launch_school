# Write a method that takes one argument, a positive integer, and 
# returns the sum of its digits

# Test cases should print true
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# convert to string
# split the integer into an array
# get the sum of all the elements

def sum(num)
  nums = num.to_s.split('')
  nums.map! do | single |
    single.to_i
  end
  nums.sum
end

# Course solution
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# Updated self solution
def sum(num)
  num.to_s.split('').map(&:to_i).sum
end