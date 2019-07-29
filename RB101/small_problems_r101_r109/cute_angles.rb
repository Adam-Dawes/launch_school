# write a method that takes a floating point number that represents an angle 
# between 0 and 360 degrees and returns a string that represents that angle
# in degrees, minutes and seconds. Use the degree symbol for degrees,
# a single quote for minutes and a double quote for seconds. A degree has
# 60 minutes while a minute has 60 seconds

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# 1 degree has 60 minutes, one minute has 60 seconds

# crete constant variables: degree, minutes per degree, seconds per minute, seconds per degree
# create method dms that takes a floating point number argument called angle
# total seconds = angle * seconds per degree rounded
# divmod over total seconds by seconds per degree, save as degrees and remaining seconds
# divmod over remaining seconds by seconds per minute, save as minutes and seconds
# minutes and seconds will need to be formatted to two digit numbers with leading zeros

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)
  total_seconds = (angle * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
