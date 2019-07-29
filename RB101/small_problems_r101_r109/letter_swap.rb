# Given a string of words seperated by spaces, write a method that takes the string and
# returns a string in which the first and last letters in everyword are swapped.

# create a method call swap which takes an argument str which is a string of words
# create an array called words which is the string split. by a space
# create two variables, first and last, which are ''
# iterate over words with map, where each elem stores the first and last index in first and
# last, deletes(!) both first and last index, then prepends and concats the first and last variable
# join the array words with a space

def swap(str)
  first_index = ''
  last_index = ''
  words = str.split(' ')

  words.map! do |word|
    if word.length > 1
      first_index = word[0]
      last_index = word[-1]
      word.delete!(word[0] + word[-1])
      word.prepend(last_index) << first_index
    end

    word
  end

  words.join(' ')
end
