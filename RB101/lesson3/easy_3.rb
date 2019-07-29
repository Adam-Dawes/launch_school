# question 1
10.times { |qty| puts (" " * qty) + "The Flintstones Rock!" }

# question 2
puts "the value of 40 + 2 is " + (40 + 2)
# Can't add a string and an integer

puts "the value of 40 + 2 is " + (40 + 2).to_s # convert the integer to a string
puts "the value of 40 + 2 is #{40+2}"

# question 3
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
rescue
  puts "Enter a positive number"
end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# question 4

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# << will alter the input arguement whereas + will not. Both will return the same value

# question 5

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# limit is defined before fib is called and is not visible in the scope of fib.
# You can define the limit variable in fib, or you could add an additional argument for limit

# question 6

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# will output 34, 







