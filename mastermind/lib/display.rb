require 'colorize'

class Display
  def welcome_message
    puts '==========================='.colorize(:blue)
    puts '===WELCOME TO MASTERMIND==='.colorize(:blue)
    puts '==========================='.colorize(:blue)
    puts 
  end
end