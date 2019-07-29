# A leap year occurs every 4 years, unless the year is divisible by 100
# ,except it is a leap year if the year is divisible by 400.
# define method leap_year? which takes an Integer argument
# using comparison operators and if statements
# when Int / 400 has no remainder => true
# when Int / 4 has no remainder && Int / 100 has no remainder => false
# when Int / 4 has no remainder => true
# else false

def gregorian_leap_year?(year) # shorten to (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  if year % 400 == 0 then true
  elsif year % 4 == 0 && year % 100 != 0 then true
  else false
  end
end

def julian_leap_year?(year)
  year % 4 == 0 && true
end

def leap_year?(year)
  year < 1752 ? julian_leap_year?(year) : gregorian_leap_year?(year)
end
