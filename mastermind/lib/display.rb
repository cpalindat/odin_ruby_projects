require 'colorize'

class Display
  def welcome_message
    puts '==========================='.colorize(:blue)
    puts '===WELCOME TO MASTERMIND==='.colorize(:blue)
    puts '==========================='.colorize(:blue)
    puts 
  end

  def turn_message
    puts 'Enter your guess:'
    puts '1 - Yellow    4 - Green'
    puts '2 - Orange    5 - Purple'
    puts '3 - Blue      6 - Pink'
  end
end