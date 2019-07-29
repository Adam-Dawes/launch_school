# write a method that takes a string and then returns a hash that contains 3 entries.
# - the number of characters in the string that are lowercase letters
# - the number of characters that are uppercase letters
# - the number of characters that are neither

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# use regex to create a method called is_uppercase? which returns a boolean value /[A-Z]/
# use regex to create a method called is_lowercase? which returns a boolean value /[a-z]/
# create a method letter_case_count which takes an argument called string
# create a Hash counts with 3 keys, lowercase, uppercase and neither which all are 0
# iterate over string with each_char |char|
# pass char to is_uppercase?, if true uppercase += 1
# pass char to is_lowercase?, if true lowercase += 1
# else neither += 1
# call counts

def uppercase?(character)
  /[A-Z]/.match?(character)
end

def lowercase?(character)
  /[a-z]/.match?(character)
end

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if lowercase?(char)
      counts[:lowercase] += 1
    elsif uppercase?(char)
      counts[:uppercase] += 1
    else counts[:neither] += 1
    end
  end
  counts
end

# Alternative

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
