require 'colorize'
require_relative 'player'

class Board
  def initialize 
    # TO DO refactor this so its not a 2D matrix - instead just label positions 1 - 9 and display the options in the UI during move selection
    @moves = [1,2,3,4,5,6,7,8,9]
    @board = " " + print_moves_cell(0) + " | ".colorize(:green) + print_moves_cell(1) + " | ".colorize(:green) + print_moves_cell(2) +
    "\n" + draw_board_divider() + " " + print_moves_cell(3) + " | ".colorize(:green) + print_moves_cell(4) + " | ".colorize(:green) + print_moves_cell(5) +
    "\n" + draw_board_divider() + " " + print_moves_cell(6) + " | ".colorize(:green) + print_moves_cell(7) + " | ".colorize(:green) + print_moves_cell(8)
  end

  def print_moves_cell(index)
    @moves[index].to_s.colorize(:mode => :bold)
  end

  def draw_board_divider
    "--- --- ---\n".colorize(:green)
  end

  # Print the board
  def print_board
    puts ""
    puts @board
    puts ""
  end

  # Update the moves array with a new move, with the players symbol
  def execute_move(selection, player)
    if selection > 10 || selection < 0
      puts ""
      puts "Invalid move. Select a number between 1 and 9.".colorize(:red)
      return false
    end
    if @moves[selection - 1] == "X" || @moves[selection - 1] == "O"
      puts ""
      puts "Invalid move. Cell is already selected.".colorize(:red)
      return false
    end
    @moves[selection - 1] = player.symbol
    return true
  end

  def update_board
    @board = " " + print_moves_cell(0) + " | ".colorize(:green) + print_moves_cell(1) + " | ".colorize(:green) + print_moves_cell(2) +
    "\n" + draw_board_divider() + " " + print_moves_cell(3) + " | ".colorize(:green) + print_moves_cell(4) + " | ".colorize(:green) + print_moves_cell(5) +
    "\n" + draw_board_divider() + " " + print_moves_cell(6) + " | ".colorize(:green) + print_moves_cell(7) + " | ".colorize(:green) + print_moves_cell(8)  
  end

  # TO DO Check for a victory condition
  def check_victory?
    if @moves[0] == @moves[1] && @moves[1] == @moves[2]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[3] == @moves[4] && @moves[4] == @moves[5]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[6] == @moves[7] && @moves[7] == @moves[8]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[0] == @moves[3] && @moves[3] == @moves[6]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[1] == @moves[4] && @moves[4] == @moves[7]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[2] == @moves[5] && @moves[5] == @moves[8]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[0] == @moves[4] && @moves[4] == @moves[8]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    elsif @moves[2] == @moves[4] && @moves[4] == @moves[6]
      puts "Player #{@moves[0]} is the winner!".colorize(:mode => :bold).colorize(:green)
      return true
    end

    return false
  end

  def check_tie?
    if @moves.all? { |move| move == "X" || move == "O" } then return true
    end
  end

end