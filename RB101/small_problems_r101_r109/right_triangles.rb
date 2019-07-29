# write a method that takes a positive integer,n, as an argument
# and displays a right triangle whoe sides each have n stars.
# the hypotenuse of the triangle should have one end at the lower
# left and one end at the top right

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# create method triangle which takes an argument n
# n.times |elem|
# puts elem+1 times * formatted to show spaces to n width

def triangle(n)
  n.times do |num|
    puts format("% #{n}s", '*' * (num + 1))
  end
end

# Modify so it prints upside down to the current orientation

def triangle(n)
  n.times do |num|
    puts format("% #{n}s", '*' * (n - num))
  end
end

# Modify for the 3rd corner

def triangle(n)
  n.times do |num|
    puts format("%-#{n}s", '*' * (n - num))
  end
end

# Modify for the 4th corner

def triangle(n)
  n.times do |num|
    puts format("%-#{n}s", '*' * (num + 1))
  end
end
