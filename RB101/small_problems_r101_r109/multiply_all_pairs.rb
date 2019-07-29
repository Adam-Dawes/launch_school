# write a method that takes two Array arguments, in which each Array
# containts a list of numbers, and returns a new Array that contains
# the product of every pair that can be formed between the two Arrays.
# the results should be sorted by increasing value. You may assume
# that neither is empty

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# create method multiply_all_pairs with two args called array1, array2.
# use #product on array1 with array2 as the arg
# continue to use #map, then use #inject on each iteration
# finish by using #sort

def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |elem| elem.inject(:*) }.sort
end

# Alternatively

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end
