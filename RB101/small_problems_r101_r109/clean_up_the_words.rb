# Given a string that consists of words and an assortment of non
# alphabetic characters, write a method that returns that string
# with all the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, you
# should only have one space in the result

# Create a constant variable ALPHABET which contains a..z
# Create method cleanup which takes an argument str
# Loop through str, push elem to result if in alphabet
# Other push a space to result
# Unless last character of result is a space
# Join result at the end

ALPHABET = ('a'..'z').to_a

def cleanup(str)
  result = []
  
  str.chars.each do |character|
    if ALPHABET.include?(character)
      result << character
    else 
      result << " " unless result.last == " "
    end
  end

  result.join
end
