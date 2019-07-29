# create method multisum that takes an Integer argument
# method searches for all multiples of 3 or 5 that lie between 1 and the argument
# It finally computes the sum of all multiples
#
# define a method multisum which takes 1 argument being an Integer
# create array called multiples to store true values
# use times to iterate over Int
# iteration += 1 due to the times method beginning at 0
# append(<<) into multiples array when iteration % 3 or 5 == 0
# use the method sum on the multiples array to return the result

def multisum(int)
  multiples = []
  int.times do |elem|
    elem += 1 
    multiples << elem if (elem % 3).zero?
    multiples << elem if (elem % 5).zero?
  end
  multiples.uniq.sum
end

# Refactoring using .upto

def multisum(int)
  multiples = []
  1.upto(int) do |num|
    multiples << num if (num % 3).zero? || (num % 5).zero?
  end
  multiples.sum
end

# Use .inject, is it clearer? In this case, no.

def multisum(int)
  1.upto(int).inject(0) {|result, num| (num % 3).zero? || (num % 5).zero? ? result + num : result }
end

