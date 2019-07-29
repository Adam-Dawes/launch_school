# Turn this array into a hash where the names are the keys and the values are the position in the array
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.to_h { |key| [key, flintstones.find_index(key)] 
#----------------
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

#####

# Add up all the ages from the Munster family hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0

ages.each_value { |value| total_ages += value}

total_ages
#------
ages.values.sum
#------
total_age = 0
ages.each { |key, age| total_ages += age }
total_age
#------
ages.values.inject(:+)

#####

# In the provided hash, throw out anyone 100 or order

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |person, age| age >= 100}
#-----
ages.keep_if { |name,age| age < 100 }

#####

# Pick out the minimum age from the provided hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

youngest = ages.values[0]

ages.each { |name,age| youngest = age if age <= youngest }
#------
ages.values.min

#####

# In the provided array, find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |person| person[0,2] == "Be" }

#####

# Amend this array so that all names are shortened to just the first 3 characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = flintstones.map { |name| name[0,3] }
#------
flintstones.map! { |name| name[0,3] }

#####

statement = "The Flintstones Rock"

letters = {}

statement.split.join("").split("").each do |letter|
  letters.has_key?(letter) ? letters[letter] += 1 : letters.store(letter, 1)
end
#------
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

#####

# What happens when we modofy an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# iterates over each index starting at 0. prints the number and then removes index 0. This causes
# the code to only loop twice. Prints 1,3 and returns [3,4] as they are the only elements left
# in the original array as shift is destructive

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# iterates over each index starting at 0, prints the number then removes the last index.
# prints 1, 2
# returns [1,2] as each returns the original collection and pop is destructive

#####

# Write your own version of titleize

words = "the flintstones rock"

words.split.each {|word| word.capitalize! }.join(" ")
#------
words.split.map { |word| word.capitalize }.join(' ')

#####

# Modify the provided hash to add a age_group key with a value of either kid(0-17), adult(18-64), senior(65+)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |person, value|
  munsters[person].store("age_group","kid") if munsters[person]["age"] <= 17
  munsters[person].store("age_group","adult") if munsters[person]["age"] > 17 && munsters[person]["age"] <= 64
  munsters[person].store("age_group","senior") if munsters[person]["age"] > 64
end
#------
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
