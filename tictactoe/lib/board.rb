require 'colorize'
require_relative 'player'

class Board
  def initialize 
    # TO DO refactor this so its not a 2D matrix - instead just label positions 1 - 9 and display the options in the UI during move selection
    @moves = [[" ", " ", " "],[" ", " ", " "],[" ", " ", " "]]
    @board = draw_board_row(0) + draw_board_divider() + draw_board_row(1) + draw_board_divider() + draw_board_row(2)
  end

  def draw_board_row(row_number)
    @moves[row_number][0].colorize(:mode => :bold) + "|".colorize(:green) + @moves[row_number][1].colorize(:mode => :bold) + "|".colorize(:green) + @moves[row_number][2].colorize(:mode => :bold) + "\n"
  end

  def draw_board_divider
    "- - -\n".colorize(:green)
  end

  # print the board
  def print_board
    puts ""
    puts @board
    puts ""
  end

  # print the current array of moves
  def print_moves
    @moves.each do |row|
      p row
    end
  end

  # update the moves array with a new move, with the players symbol
  def make_move(row, col, player)
    if @moves[col][row] != " "
      puts "Square is unavailable for a move.".colorize(:red)
      return false
    end
    @moves[col][row] = player.symbol
    return true
  end

  def update_board
    @board = draw_board_row(0) + draw_board_divider() + draw_board_row(1) + draw_board_divider() + draw_board_row(2)
  end

  # check for a victory condition
  def check_victory?
    # check rows for victory
    @moves.each do |row| 
      if row[0] == row[1] && row[1] == row[2]
        return true
      end
    end

    # TODO: check cols for victory
    @moves.each_with_index do |row, index|
      if @moves[0][index] == @moves[0][index + 1] && @moves[0][index + 1] == @moves[0][index + 2]
        return true
      end
    end

    # check diagonal for victory
    if @moves[0][0] == @moves[1][1] && @moves[1][1] == @moves[2][2]
      return true
    elsif @moves[0][2] == @moves[1][1] && @moves[1][1] == @moves[2][0]
      return true
    end

    return false
    end

end