def palindrome?(str) # works for arrays as well
  str == str.reverse
end

def real_palindrome?(str)
  new_str = str.downcase.split("").reject{ |elem| !("a".."z").include?(elem)}
  new_str.join("") == new_str.join("").reverse
end

def palindromic_number?(int) 
  int.to_s == int.to_s.reverse # palindrome?(int.to_s)
end