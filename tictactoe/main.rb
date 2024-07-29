require_relative 'lib/board'
require_relative 'lib/player'

require 'colorize'

# Create two player instances of the Player object
player_one = Player.new("X")
player_two = Player.new("O")

# Initialize the board state
board = Board.new
board.print_board
current_player = player_one

# Begin game loop
loop do
  # Display header for current player
  case current_player
  when player_one
    puts "Player One Turn".colorize(:mode => :bold)
  when player_two
    puts "Player Two Turn".colorize(:mode => :bold)
  end

  # Get input from user on move and validate that it is a valid move.
  puts "Select an available cell for your move: "
  selection = gets.chomp.to_i
  loop do
    break if board.execute_move(selection, current_player)
    puts "Select an available cell for your move: "
    selection = gets.chomp.to_i
  end

  board.update_board()
  board.print_board()

  # TO DO Check for victory condition and break out of loop if true
  # TO DO Check for stalemate and break out of loop if true
  break if board.check_victory?

  # Swap to other player
  case current_player
  when player_one
    current_player = player_two
  when player_two
    current_player = player_one
  end
end

