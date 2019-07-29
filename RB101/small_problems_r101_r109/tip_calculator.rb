puts "==> How much was the bill?"
bill = gets.chomp!.to_f

puts "==> What's the tip rate?"
tip = answer=gets.chomp!.to_f

tip_amount = (bill / 100 * tip).round(2)
total_bill = (bill + tip_amount).round(2)

puts "==> The tip is $#{"%.2f" % tip_amount}"
puts "==> The total is $#{"%.2f" % total_bill}"