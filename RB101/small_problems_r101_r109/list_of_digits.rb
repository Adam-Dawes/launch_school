#Write a method that takes one argument, a positive integer, 
#and returns a list of the digits in the number.

#Test cases

#puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#puts digit_list(7) == [7]                     # => true
#puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#puts digit_list(444) == [4, 4, 4]             # => true


def digit_list(digits)
  array = digits.to_s.chars
  array.map! { |num| num.to_i }
end

def digit_last(digits)
  array = digits.to_s.split('')
  array.map! { |num| num.to_i }
end

# Course solution
# (&:to_i) is shorthand for { |num| num.to_i }

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

def digit_list(number)
  number.to_s.split('').map(&:to_i)
end