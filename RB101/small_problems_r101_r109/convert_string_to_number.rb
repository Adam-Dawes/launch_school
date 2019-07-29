def which_number(int) # Should have used as a constant variable
  case int
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  end
end

def string_to_integer(str)
  converted = []
  counter = 0

  loop do
    digits = str.split('') # .chars and .map would've cleaned this up
    break if counter == digits.size
    converted << which_number(digits[counter])
    counter += 1
  end

  value = 0
  converted.each { |number| value = 10 * value + number }
  value
end

#---- Course solution

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end