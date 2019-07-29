# QUESTION 1
if false
  greeting = “hello world”
end

greeting

# first assumption would be an exception, however when a local variable
# is initialized in an if block, even if the block isn't executed the
# variable will be initializes as nil

# QUESTION 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => {:a=>"hi there"}

# greetins and informal_greeting are pointing to the same object
# when 'there' was appended to informal_greeting it was also appending onto the object
# greetings is still pointing to that object so it prints {:a=>"hi there"}

# QUESTION 3
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one is one
puts "two is: #{two}" # two is two
puts "three is: #{three}" # three is three

# mess_with_vars is it's own scope and = is reassigning the variables within the scope but isn't destructive to the outside scope
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one is one
puts "two is: #{two}" # two is two
puts "three is: #{three}" # three is three

# mess_with_vars is it's own scope and = is reassigning the variables within the scope but isn't destructive to the outside scope

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one is two
puts "two is: #{two}" # two is three
puts "three is: #{three}" # three is one

# mess_with_mars is it's own scope, however because the local variables were passed as arguments AND the destructive method gsub! was used it alters the local variable outside it's scope

# QUESTION 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

# need to put in a check to see if dot_seperated_words == 4
# code isn't returning false when  a number isn't numeric, it breaks and returns true

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_seperated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
