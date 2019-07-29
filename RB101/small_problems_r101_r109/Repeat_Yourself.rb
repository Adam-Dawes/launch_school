#Write a program that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

#Test Cases
#repeat('Hello', 3)

#Use times method

def repeat(str,amount)
  amount.times {puts str}
end

