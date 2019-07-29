# write a method that takes a String and returns a new String
# that contains the orignal value using staggered capitalization
# in which every other character is capitalized starting at the first
# Non letters should not be changed, but do count when switching

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# create method staggered_case with a parameter string
# created variable index = 0
# characters = string.split('')
# begin loop
# if characters[index] is /[a-zA-Z]/ then #upcase!
# index += 1
# break if index == characters.size
# if characters[index] is /[a-zA-Z]/ then #downcase!
# index += 1
# break if index == characters.size
# characters.join('')

def staggered_case(string)
  index = 0
  characters = string.split('')
  loop do
    break if index >= characters.size
    if characters[index] =~ /[a-zA-Z]/ && index.even?
      characters[index].upcase!
    elsif characters[index] =~ /[a-zA-Z]/ && index.odd?
      characters[index].downcase!
    end
    index += 1
  end
  characters.join('')
end

# Alternative

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Modify to allow user to choose the first character to be downcase

def staggered_case(string, downcase_first = nil)
  result = ''
  downcase_first == nil ? need_upper = true : need_upper = false
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
