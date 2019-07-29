# write a method that takes an Array of Integers between 0-19 and returns an Array
# of those Integers sorted based on the English words for each number
# zero, one, two, three, four, five, six, seven, eight, nine, ten etc.

# alphabetic_number_sort((0..19).to_a) == [
#  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#  6, 16, 10, 13, 3, 12, 2, 0]

# Create a constant called ENGLISH_WORDS which is a hash containing
# the Integer as the key and the word as the value for the Integers 0..19
# Create method alphabetic_number_sort which takes an argument numbers
# Create variable words which is an array and result which is an array
# Iterate over numbers, check ENGLISH_WORDS for the value of the number and push it into words
# sort! words
# Iterate over words, push the key of the word into result
# Call result

ENGLISH_WORDS = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }

def alphabetic_number_sort(numbers)
  result = []
  words = []
  numbers.each { |number|words << ENGLISH_WORDS[number] }
  words.sort!.each { |word| result << ENGLISH_WORDS.key(word) }
  result
end