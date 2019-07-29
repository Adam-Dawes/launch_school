#Write a method that takes one argument, a string containing one or more words,
#and returns the given string with all five or more letter words reversed. 
#Each string will consist of only letters and spaces. Spaces should be 
#included only when more than one word is present.

#Test cases

#puts reverse_words('Professional')          # => lanoisseforP
#puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
#puts reverse_words('Launch School')         # => hcnuaL loohcS

# input is a string
# split the string into an array of words
# iterate with length
# reverse if length is 5 or more letters
# join

def reverse_words(string)
  words = string.split

  words.each { |word| word.reverse! if word.length >= 5 }

  words.join(" ")
end

# Course solution

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end