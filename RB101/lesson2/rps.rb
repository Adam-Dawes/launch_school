VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  rules = {}
  rules[:rock] = "scissors", "lizard"
  rules[:paper] = "rock", "spock"
  rules[:scissors] = "paper", "lizard"
  rules[:lizard] = "spock", "paper"
  rules[:spock] = "rock", "scissors"
  rules[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp!

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? Y to play again")
  answer = gets.chomp!
  break unless answer.downcase.start_with?('y')
end
