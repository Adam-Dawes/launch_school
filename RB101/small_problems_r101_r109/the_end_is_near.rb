# write a ,ethod that returns the next to last work in the String
# passed in as an argument. Words are any sequence of non blank
# characters. You may assume it will contain at least two words.

# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# create method penultimate taking an arg called string
# use #split on the string then call the 2nd last index [-2]

def penultimate(string)
  string.split[-2]
end

# Write a method to retrieve the middle word of a phrase or sentence.
# What edge cases need to be considered?
# Cover all edge cases

# Empty string
# One word
# No middle word (even amount of words)
# Not a string passed as an argument

def middle_word(string)
  if (string.is_a? String) == false || string.empty? || (string.split.size == 1)
    puts 'You did not enter a valid String, please try again'
  elsif string.split.size.even?
    puts "Your string doesn't have a middle word, it's an even amount of words"
  else
    words = string.split
    words[words.size / 2]
  end
end
