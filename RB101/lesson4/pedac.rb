# P - [Understand the] Problem
# E - Examples / Test cases
# D - Data Structure
# A - Algorithm
# C - Code

# PROBLEM + EXAMPLE

# Given a string, write a method change_me which returns the same string but all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

# input: string
# output: string
# rules: 
# every palindrome to be uppercased
# case sensitive

# DATA STRUCTURE + ALGORITHM
# split the string into an array called words
# create a method named is_a_palindrome? which returns true if the word is equal to the word reversed
# loop through the words array and use is_a_palindrome? on each iteration followed by using upcase! on any that return true
# join the array words to a variable called result

str = "I sleep until noon and i like to be called madam"

def is_a_palindrome?(word)
  word == word.reverse
end

words = str.split(" ")

words.each do |word| is_a_palindrome?(word) ? word.upcase! : nil
  end

result = words.join(" ")

puts result

########## looping rather than using the each method

str = "I sleep until noon and i like to be called madam"

def is_a_palindrome?(word)
  word == word.reverse
end

words = str.split(" ")
counter = 0
loop do
  words[counter].upcase! if is_a_palindrome?(words[counter])
  counter += 1
  break if counter == words.size
end

result = words.join(" ")

puts result