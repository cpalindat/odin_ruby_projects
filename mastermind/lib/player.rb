require_relative 'display'

class Player
  def initialize
    
  end

  def guess()
    guesses = []
    4.times do 
      print 'Enter your guess: '
      guess = gets.chomp.to_i
      guesses.push(guess)
    end
    return guesses
  end
end


class ComputerPlayer < Player
  attr_reader :code

  COLORS = ["Yellow","Orange","Blue","Green","Purple","Pink"]

  def generate_code
    @code = []
    4.times do
      @code.push(COLORS.sample(1))
    end
  end
end