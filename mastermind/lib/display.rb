require 'colorize'

class Display
  def welcome_message
    puts '==================='.colorize(:blue)
    puts '===GAME STARTING==='.colorize(:blue)
    puts '==================='.colorize(:blue)
  end
end