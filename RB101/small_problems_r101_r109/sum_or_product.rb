def valid_int?(int)
  int == int.to_i.to_s
end


loop do
  integer = 0

  loop do
    puts ">> Please enter an integer greater than 0."
    integer = gets.chomp!
    break if valid_int?(integer)
  end

  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operator = gets.chomp!

  if operator == "s"
    result = (1..integer.to_i).inject(:+)
    puts "The sum of the integers between 1 and #{integer} is #{result}"
  elsif operator == "p"
    result = (1..integer.to_i).inject(:*)
    puts "The product of the integers between 1 and #{integer} is #{result}"
  else
    puts "You did not enter either 's' or 'p'."
  end

  puts ">> Would you like to do another calculation? 'y' to go again."
  go_again = gets.chomp!

  break if go_again != 'y'
end

puts "Goodbye!"