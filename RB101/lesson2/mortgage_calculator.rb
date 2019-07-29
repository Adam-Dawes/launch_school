def prompt(message)
  puts "=> #{message}"
end

def valid_int(num)
  num.to_i.to_s == num
end

loop do
  prompt('Welcome to the mortgage calculator!')
  loan_amount_total = ''

  loop do
    prompt('What is your total loan amount?')
    loan_amount_total = gets.chomp!

    if valid_int(loan_amount_total) && loan_amount_total.to_i > 0
      break
    else prompt('Please enter a valid positive number. Do not include $ . or ,')
    end
  end

  interest_rate = ''
  loop do
    prompt('What is your interest rate? Do not include %')
    interest_rate = gets.chomp!

    if interest_rate.to_f > 0
      break
    else prompt('Please enter a valid number and do not include %')
    end
  end

  loan_duration_years = ''
  loop do
    prompt('How many years is the duration of your loan?')
    loan_duration_years = gets.chomp!

    if valid_int(loan_duration_years) && loan_duration_years.to_i > 0
      break
    else prompt('Please enter a valid positive number')
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_duration_months = loan_duration_years.to_f * 12
  monthly_payment = loan_amount_total.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-loan_duration_months))

  prompt("Your monthly payment is $#{monthly_payment.round(2)}")

  prompt('If you would like to do another calculation please press Y')
  repeat = gets.chomp

  break unless repeat.downcase == 'y'
end

prompt('Thanks for using Mortgage Calculator')
