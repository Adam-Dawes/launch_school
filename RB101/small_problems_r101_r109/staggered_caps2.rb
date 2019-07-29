# modify the method from the last exercise to ignore non_alphabetic
# characters when determining whether it should be upper or lowercase
# the non-alphabetic characters should still be included

# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper && (char =~ /[a-zA-Z]/) == 0
      result += char.upcase
      need_upper = !need_upper
    elsif (char =~ /[a-zA-Z]/) == 0
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Modify to allow the user to choose whether to count non alphabetical
# characters when determining the upper/lowercase state

def staggered_case(string, count_non_alpha = nil)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper && (char =~ /[a-zA-Z]/) == 0
      result += char.upcase
      need_upper = !need_upper
    elsif (char =~ /[a-zA-Z]/) == 0
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
      need_upper = !need_upper if count_non_alpha.nil?
    end
  end
  result
end
