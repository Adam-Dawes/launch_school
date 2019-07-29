
# How would you reference grass in:
str = 'The grass is green'
str[4,5 # => "grass"
str.slice(4,5) # => grass

# What will be returned
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[2, 3] # => ["c","d","e"]
arr[2, 3][0] # => "c"

# What will be returned
str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

str[-6] # => nil
arr[-6] # => nil

# Show a couple ways in which the items in the array can be joined together so it resembles the original string
str = 'How do you get to Carnegie Hall?'
arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
arr.join        # => "HowdoyougettoCarnegieHall?"

arr.join(" ")
arr[0] + ' ' + arr[1] + ' ' + arr[2] + ' ' + arr[3] + ' ' + arr[4] + ' ' + arr[5] + ' ' + arr[6]

# What would happen if you use to_h on the below Array
arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
arr.to_h # => { :name => "Joe", :age => 10, :favorite_color => "blue" }

# Using the shown elemnt assignment method, change out each first letter to uppercase
str = "joe's favorite color is blue"
str[0] = "J"
str[6] = "F"
str[15] = "C"
str[21] = "I"
str[24] = "B"

# Use the shown method to increase all values by 1
arr = [1,2,3,4,5]
arr[0] += 1
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1

# Use the shown method to set a value of Fruit or Vegetable
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh[:carrot] = "Vegetable"
hsh[:pear] = "Fruit"
hsh[:broccoli] = 'Vegetable'