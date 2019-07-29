#Write a method that counts the number of occurrences of each element in a given array.

#Expected output

#car => 4
#truck => 3
#SUV => 1
#motorcycle => 2

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(vehicles)
  index = 0
  checked = []

  loop do
    vehicle = vehicles[index]

    if checked.any?(vehicle) == false
      count = vehicles.count(vehicle)
      puts "#{vehicle} => #{count}"
      checked << vehicle
      index += 1
      else
      index += 1
    end

    break if index == 10
  end
end

# Course solution

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end