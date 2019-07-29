#Write a method that takes one argument, a string, and returns a new string 
#with the words in reverse order.

#Test cases should print true
#puts reverse_sentence('') == ''
#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

# Course solution

def reverse_sentence(string)
  string.split.reverse.join(' ')
end