# write a method that takes a String argument and returns a
# new String in which uppercase and lowercase letters
# are switched. All other characters should be unchanged.
# You may not use #swapcase

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# create method swapcase which takes an argument string
# use #split and #map on string, |char|
# use #upcase! on char if /[a-z]/
# use #downcase on char if /[A-Z]/
# #join('')

def swapcase(string)
  string.split('').map do |char|
    if char =~ /[a-z]/
      char.upcase!
    elsif char =~ /[A-Z]/
      char.downcase!
    else
      char
    end
  end.join('')
end
