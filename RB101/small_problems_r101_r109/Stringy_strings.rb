#Write a method that takes one argument, a positive integer, and returns a string
#of alternating 1s and 0s, always starting with 1. The length of the string
#should match the given integer

# input is an integer
# new str as an array
# iterate using times with the argument provided
# if new str is even, push 1
# if new str is odd, push 0
# join the array into a string

def stringy(int)
  string = []
  count = int

  count.times do
    if 
      string.size.odd? 
        string.push(0)
        else 
          string.push(1)
    end
  end
  string.join
end


