numbers = []

puts '>> Enter the 1st number:'
numbers << gets.chomp!.to_i
puts '>> Enter the 2nd number:'
numbers << gets.chomp!.to_i
puts '>> Enter the 3rd number:'
numbers << gets.chomp!.to_i
puts '>> Enter the 4th number:'
numbers << gets.chomp!.to_i
puts '>> Enter the 5th number:'
numbers << gets.chomp!.to_i
puts '>> Enter the last number:'
number_to_check = gets.chomp!.to_i

if numbers.include?(number_to_check)
  puts "The number #{number_to_check} appears in #{numbers}"
else
  puts "The number #{number_to_check} doesn't appear in #{numbers}"
end
