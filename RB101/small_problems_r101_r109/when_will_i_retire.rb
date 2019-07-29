puts "==> What is your age?"
age = gets.chomp!.to_i

puts "==> What age do you want to retire?"
retire_age = gets.chomp!.to_i

retire_in = retire_age - age
current_year = Time.now.year
retire_year = current_year + retire_in

puts "You have #{retire_in} years of work until you retire."
puts "The current year is #{current_year} so you will retire in #{retire_year}."