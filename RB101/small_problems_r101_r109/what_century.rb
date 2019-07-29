def century_suffix(int)
  result = ""

  if int[-1] == "1"
    int.chars.last(2).join == "11" ? result = int + "th" : result = int + "st"
  elsif int[-1] == "2"
    int.chars.last(2).join == "12" ? result = int + "th" : result = int + "nd"
  elsif int[-1] == "3"
    int.chars.last(2).join == "13" ? result = int + "th" : result = int + "rd"
  else
    result = int + "th"
  end

  result
end

def century(year)
  century = 1
  year_range = 1..100
  result = ""

  loop do
    if year_range.include?(year)
      result = century_suffix(century.to_s)
      break
    else
      century += 1
      year_range = 1..(100 * century)
    end
  end

  result
end
