#question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# will print:
#1
#2
#2
#3
#uniq didn't mutate the caller, uniq! would have

#question 2
#what is != and where should you use it? => Doesn't equal => 3 != 4
#put ! before something, like !user_name =>  will turn into the opposite of the boolean equivalent
#put ! after something, like words.uniq! => will mutate that method, but doesn't work on all methods
#put ? before something => not ruby syntax, part of a method name
#put ? after something => not ruby syntax, part of a method name
#put !! before something, like !!user_name => will turn into a boolean equivalent

#question 3
#replace the word important with urgent
advice = "Few things in life are as important as house training your pet dinosaur."
words = advice.split(" ")
words.map! do |x|
   if x == "important"
    x = "urgent"
  else
    x = x
  end
end

advice = words.join(" ")

#OR advice.gsub('important','urgent')

#question4
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # [1,3,4,5]
numbers.delete(1) # [2,3,4,5]

#question5
#Programmatically determine if 42 lies between 10 and 100.
42 > 10 && 42 < 100

num = 42
if num > 10 && num < 100
  puts "#{num} is between 10 and 100"
else
  puts "#{num} is not between 10 and 100"
end

(10..100).cover?(42)

#question6
#show 2 ways to put "Four score and" in front of
famous_words = "seven years ago..."

famous_words.prepend('Four scores and ')
"Four score and " << famous_words
"Four score and " + famous_words

#question7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

#eval(how_deep) returns 42

#question8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
#turn into an unnested array
flintstones.flatten!

#question9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones = flintstones.to_a[2]

flintstones.assoc('Barney')



