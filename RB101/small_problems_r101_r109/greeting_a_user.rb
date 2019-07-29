print "==> What is your name?"
user_name = gets.chomp!

if user_name[-1] == "!"
  quiet_name = user_name.delete_suffix("!") # Use .chop alternatively
  puts "HELLO #{quiet_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end