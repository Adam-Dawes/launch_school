# write a method that takes two Arrays and returns an Array
# that contains all values from the 2 Arrays except no duplicates.

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# create method merge that takes two arguments. arr1 and arr2
# arr 1 plus arr 2 then call uniq

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

def merge(arr1, arr2)
  arr1 | arr2
end
