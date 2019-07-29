# write a method that takes an Array of Integers, mulitplies them all together
# , divides the result by the number of entries in the Array, and then prints
# the result rounded to 3 decimal places. Assume the Array is non-empty.

# show_multiplicative_average([3, 5])
# The result is 7.500
# show_multiplicative_average([6])
# The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# create method show_multiplicative_average with a parameter called numbers
# initiate variable result = 1
# iterate over numbers using #each, |num|
# result *= num
# print (result.to_f / numbers.size).round(3)

def show_multiplicative_average(numbers)
  result = numbers.inject(:*).to_f / numbers.size
  format('The result is %.3f', result)
end
