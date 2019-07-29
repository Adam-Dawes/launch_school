def short_long_short(str1,str2)
  if str1.length < str2.length
    str1.concat(str2.concat(str1)) # str1 + str2 + str1
  else
    str2.concat(str1.concat(str2)) # str2 + str1 + str2
  end
end
