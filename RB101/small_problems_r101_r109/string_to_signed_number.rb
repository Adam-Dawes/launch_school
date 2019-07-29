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

def string_to_signed_integer(string)
  if string[0] == '+'
    string_to_integer(string.gsub('+', ''))
  elsif string[0] == '-'
    - + string_to_integer(string.gsub('-', ''))
  else
    string_to_integer(string)
  end
end

# refactor to call string_to_integer less

def string_to_signed_integer(string)
  string[0] == '+' || string[0] == '-' ? start = 1 : start = 0
  result = string_to_integer(string[start..-1])
  string[0] == '-' ? -result : result
end
