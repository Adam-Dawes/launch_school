numbers = (1..99)

numbers.each { |num| puts num if num.odd? }

# second solution

numbers = (1..99)

numbers.select { |num| puts num unless num % 2 == 0 }