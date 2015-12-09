def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    total += deal_card
  elsif user_input == "s"
    total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  i = initial_round
    until i > 21
    i = hit?(i)
    display_card_total(i)
    end
  end_game(i)
end