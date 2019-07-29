# write a method that takes an array of strins and returns an array
# with the same values except the vowels removed

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# create method remove_vowels that takes an array called strings
# iterate with map, and delete any occurence of "aeiouAEIOU"

def remove_vowels(strings)
  strings.map { |string| string.delete "aeiouAEIOU" }
end