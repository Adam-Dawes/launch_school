# Modify the word_sizes method to exclude non-letters when determining word size

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# Use prefvious word_sizes method
# Create constant variable ALPHABET which contains the range a-z in an array
# in the iteration of words, split and iterate each character.
# If the character is in ALPHABET then put it in a new_word variable otherwise nothing
# Put new_word.length into result += 1


ALPHABET = ("a".."z")

def word_sizes(str)
  result = Hash.new(0)
  str.split.each do |word|
    new_word = ""
    word.downcase.split('').each do |char|
      new_word << char if ALPHABET.any?(char)
    end
    result[new_word.length] += 1
  end
  result
end
