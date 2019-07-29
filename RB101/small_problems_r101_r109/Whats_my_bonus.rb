# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, 
#the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Tests which should print true
#puts calculate_bonus(2800, true) == 1400
#puts calculate_bonus(1000, false) == 0
#puts calculate_bonus(50000, true) == 25000

# if bonus is true put half salary
# if bonus is false put 0

def calculate_bonus(salary, bonus)
  if bonus == true
     salary / 2
  elsif bonus == false
     0
  end
end

# Course solution

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end