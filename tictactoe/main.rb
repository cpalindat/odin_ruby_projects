require_relative 'lib/board'
require_relative 'lib/player'

# Create two player instances of the Player object
player_one = Player.new("X")
player_two = Player.new("O")

# Initialize the board state
board = Board.new

# Start the game loop


# TEST COMMANDS
board.make_move(0,0,player_one)
board.update_board

board.print_board

board.make_move(0,0,player_two)
board.update_board

board.make_move(1,1,player_two)
board.update_board

board.make_move(0,1,player_one)
board.make_move(0,2,player_one)
board.update_board

board.print_board

if board.check_victory?
  p "winner"
end
