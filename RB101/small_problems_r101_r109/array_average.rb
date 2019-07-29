# Write a method that takes one argument, an array containing integers, and
# returns the average of all the numbers in the array. The array will never
# be emptied and the numbers will always be positive integers.

#Test cases should print true
#puts average([1, 5, 87, 45, 8, 8]) == 25
#puts average([9, 47, 23, 95, 16, 52]) == 40

# use sum to get total
# divide by array size/length
 
def average(int)
  result = int.sum / int.size
end

#Dealing with a float

def average(int)
  int.map! do |x|
    x.to_f
  end
  result = int.sum / int.size
end