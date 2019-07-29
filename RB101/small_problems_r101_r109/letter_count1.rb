# Write a method that takes a string with one or more space seperated words
# and returns a hash that shows the numbers of words of different sizes

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Create method word_sizes that takes an argument called str
# Create a hash called result
# Create an array called words
# Seperate str between spaces into an array and assign to words #split
# Iterate over words #each
# Each iteration check the length of the word, check if the length is in the Hash #length #include?
# If the length is a key in the hash, it's value is +=1
# If the length isn't in the hash create a key of that length and a value of 1
# Call result

def word_sizes(str)
  result = {}

  words = str.split(" ")
  words.each do |word|
    if result.include?(word.length)
      result[word.length] += 1
    else result[word.length] = 1
    end
  end

  result
end

# Alternative

def word_sizes(words_string)
  counts = Hash.new(0) # Defaults non existant keys to 0
  words_string.split.each do |word|
    counts[word.size] += 1 # The default makes this possible
  end
  counts
end
