# question 1
# see if "Spot" is present.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?('Spot')
ages.has_key?('Spot')
ages.key?('Spot')

# question 2
munsters_description = "The Munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!
# "The munsters are creepy in a good way."
munsters_description.capitalize!
# "the munsters are creepy in a good way."
munsters_description.downcase!
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!

# question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

# question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.split(" ").include?("Dino")
advice.match?("Dino")

# question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino")
flintstones << "Dino"

# question 7
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino","Hoppy")
flintstones.concact(%w(Dino Hoppy))

# question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house')) # removes everything from 0 to house, returns whats removed

# question 9
statement = "The Flintstones Rock!"
statement.count('t')

# question 10
title = "Flintstone Family Members"
title.center(40)



