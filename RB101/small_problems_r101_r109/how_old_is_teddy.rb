teddy_age = rand(20..100)

puts "What is your name?"

name = gets.chomp!

name = "Teddy" if name.empty?

puts "#{name} is #{teddy_age} years old!"