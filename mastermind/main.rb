require_relative 'lib/player'
require_relative 'lib/display'

display = Display.new
display.welcome_message

player = Player.new()

computer_player = ComputerPlayer.new()
computer_player.generate_code()
p "DEBUG Starting code is #{computer_player.code}"
puts

display.turn_message()
guesses = player.guess()
p guesses