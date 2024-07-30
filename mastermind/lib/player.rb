

class Player
  def initialize
    
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