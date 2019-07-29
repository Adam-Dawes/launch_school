# write a method that takes a single String and returns
# a new string that contains the original string with
# each word capitalized and all others lowercase

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# create method word_cap that takes an argument string
# split the string, iterate over using each, capitalize! each element
# and join with " "

def word_cap(string)
  string.split.each(&:capitalize!).join(" ")
end

# create a method that doesn't use #capitalize

UPPERCASE = { "a" => "A", "b" => "B", "c" => "C", "d" => "D",
              "e" => "E", "f" => "F", "g" => "G", "h" => "H", "i" => "I",
              "j" => "J", "k" => "K", "l" => "L", "m" => "M", "n" => "N",
              "o" => "O", "p" => "P", "q" => "Q", "r" => "R", "s" => "S",
              "t" => "T", "u" => "U", "v" => "V", "w" => "W", "x" => "X",
              "y" => "Y", "z" => "Z" }.freeze

def word_cap(string)
  string.downcase.split.each do |word|
    word.gsub!(word[0], UPPERCASE[word[0]]) if (word[0] =~ /[a-zA-Z]/) == 0
  end.join (' ')
end
