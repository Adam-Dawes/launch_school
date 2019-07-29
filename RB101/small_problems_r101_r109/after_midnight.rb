# The time of day can be represented as the number of minutes before or after midnight
# If positive, after midnight. If negative, before midnight
# Write a method to accept an integer which converts it to a string showing the time.
# 24hr format (hh:mm)

# define method time_of_day which accepts an argument(int)
# have a variable called time which is the result of divmod(60) on int
# time = int.divmod(60) => [hour, minute]
# time[0] %= 24 to deal with hours that go above 24
# if the first index of time is < 0, time add 24
# if time[0].digits.size == 1 then when joining the result you will prepend a 0 to time[0].to_s
# if time[1].size == 1 then when joining the result you will prepend a 0 to time[1].to_s
# return time joined with a :

def time_of_day(int)
  time = int.divmod(60)
  time[0] %= 24
  time[0] += 24 if time[0] < 0

  time[0] = time[0].to_s.prepend('0') if time[0].digits.size == 1
  time[1] = time[1].to_s.prepend('0') if time[1].digits.size == 1
  time.join(':')
end

# the last 3 lines could be replaced with format('%02d:%02d',time[0],time[1])