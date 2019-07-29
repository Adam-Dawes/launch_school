numbers = (1..99)

numbers.each { |num| puts num if num  % 2 == 0} # can exchange for .even?

# Second solution

numbers = (1..99)

numbers.each { |num| puts num unless num % 2 != 0 } # can exchange for .odd?