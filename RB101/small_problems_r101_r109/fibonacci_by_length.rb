# write a method that calculates and returns the index of the first
# Fibonacci number that has the number of digits specified.
# The first Fibonacci number has an index of 1.

# find_fibonacci_index_by_length(2) == 7
# find_fibonacci_index_by_length(3) == 12
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# fibonacci - 1 1 2 3 5 8 13 21
# create method find_fibonacci_index_by_length which takes an argument length
# create a counter called index = 2
# create 2 variables, fib1 is 1 and fib2 is 1
# create a loop that will calculate the fibonacci sequence and the index
# fib1 += fib2
# fib2 = fib1 - fib2
# when length and fib1.to_s.length are the same, break
# call index

def find_fibonacci_index_by_length(length)
  index = 2
  fib1 = 1
  fib2 = 1
  loop do
    fib1 += fib2
    fib2 = fib1 - fib2
    iteration += 1
    break if fib1.to_s.size == length
  end
  index
end

