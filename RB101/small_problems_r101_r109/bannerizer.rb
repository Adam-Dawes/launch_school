# Write a method that takes a short line of text and prints it within a box
# You may assume the input will always fit within a window

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# create a method called print_in_box that takes an argument text
# variable width = length of text
# puts '+-', '-' times the amount of width, '-+'
# puts '| ', ' ' times the amount of width, ' |'
# puts '| ', text, ' |'
# puts '| ', ' ' times the amount of width, ' |'
# puts '+-', '-' times the amount of width, '-+'

def print_in_box(text)
  width = text.length
  puts "+-#{'-' * width}-+"
  puts "| #{' ' * width} |"
  puts "| #{text} |"
  puts "| #{' ' * width} |"
  puts "+-#{'-' * width}-+"
end

# Modify to truncate if the message will be too wide to fit inside a
# standard terminal window of 80 columns

def print_in_box(text)
  width = text.length
  while width > 76
    text.chop!
    width -= 1
  end
  puts "+-#{'-' * width}-+"
  puts "| #{' ' * width} |"
  puts "| #{text} |"
  puts "| #{' ' * width} |"
  puts "+-#{'-' * width}-+"
end

# Modify the code to wrap long messages so it appears on multiple lines(over 80)

def print_in_box(text)
  width = text.length

  if width > 76
    puts "+-#{'-' * 76}-+"
    puts "| #{' ' * 76} |"
    loop do
      line = text.slice!(0..75)
      puts "| #{line} |"
      break if text.size <= 76
    end
    puts "| #{text} #{' ' * (76 - text.length)}|"
    puts "| #{' ' * 76} |"
    puts "+-#{'-' * 76}-+"
  else
    puts "+-#{'-' * width}-+"
    puts "| #{' ' * width} |"
    puts "| #{text} |"
    puts "| #{' ' * width} |"
    puts "+-#{'-' * width}-+"
  end
end
