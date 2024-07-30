require_relative 'lib/player'
require_relative 'lib/display'

display = Display.new
display.welcome_message

computer_player = ComputerPlayer.new()
computer_player.generate_code()
p "DEBUG Starting code is #{computer_player.code}"