print '>> Enter a word or sentence to find out the number of characters:'
words = gets.chomp!
amount = words.split('').count { |letter| letter != ' ' } #words.delete(' ').size
puts "There are #{amount} characters in #{words}."
