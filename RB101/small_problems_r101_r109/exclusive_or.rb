def xor?(arg1, arg2)
  if arg1 && arg1
    arg2 && arg2 ? false : true
  else 
    arg2 && arg2
  end
end

# prefix an argument with ! will reverse it's boolean equivalent.

#def xor?(arg1, arg2)
 #(arg1 && !arg2) || (arg2 && !arg1)
#end