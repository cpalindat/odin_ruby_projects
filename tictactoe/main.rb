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

board.make_move(1,1,player_two)
board.update_board

board.make_move(1,0,player_one)
board.make_move(2,0,player_one)
board.update_board

board.print_board

p board.print_moves

if board.check_victory?
  p "winner"
else
  p "no winner"
end
