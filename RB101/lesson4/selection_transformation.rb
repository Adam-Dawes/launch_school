produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# Implement a method to select key-value pairs where the vaule is 'Fruit'

def select_fruit(food)
  produce_keys = food.keys
  fruit = {}
  counter = 0

  loop do
    current_key = produce_keys[counter]
    current_value = food[current_key]
    
    fruit[current_key] = current_value if current_value == "Fruit"
    counter += 1
  break if counter >= food.size
  end

  fruit
end

#####

my_numbers = [1, 4, 3, 7, 2, 6]

# Implement a method that doubles the numbers and mutates the argument

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2
    counter += 1
  end

  numbers
end

#####

# Implement a method to double odd numbers

my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_numbers!(numbers)
  doubled_odds = []
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2 if numbers[counter].odd?
    doubled_odds << numbers[counter]

    counter += 1
  end

  doubled_odds  
end

# To double odds without mutating the it's argument, assign a new variable in the method

my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_numbers(numbers)
  doubled_odds = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if numbers[counter].odd?
    doubled_odds << current_number

    counter += 1
  end

  doubled_odds  
end

# Implement a method to double numbers with a position in the array that is odd, rather than value

my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_indexes(numbers)
  doubled_indexes = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_indexes << current_number

    counter += 1
  end

  doubled_indexes
end

#####

# Implement a method that takes 2 arguments, an array of numbers and an integer to multiply them all by

def multiply(numbers, times)
  result = []
  counter = 0

  loop do
    break if counter == numbers.size

    result << numbers[counter] * times

    counter += 1
  end

  result
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3)

#####




