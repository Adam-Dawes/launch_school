# Write 2 methods that take the time of day in 24 hr format and return the number
# of minutes before and after midnight respectively.

# create method after_midnight which takes an argument str
# create a variable result = 0
# new array time = split string at ":"
# result = first index of time.to_i times 60 plus the second index of time.to_i
# ternary if for result if equal to 1440, result is 0 if true otherwise result
# for method before_midnight just change the + to a -

def after_midnight(str)
  result = 0
  time = str.split(':')
  result = time[0].to_i * 60 + time[1].to_i
  result == 1440 ? result = 0 : result
end

def before_midnight(str)
  result = 0
  time = str.split(':')
  result = time[0].to_i * 60 - time[1].to_i
  result == 1440 ? result = 0 : result
end
