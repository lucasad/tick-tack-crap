module TicTacToe
  class Board
    
    def initialize(board = Array.new(9, ""))
      @board = board
    end
    
    def game_over?
      not @board.include?("") or win?
    end
    
    def win?
    end
    
    def play
    end
    
    def to_s
    end
    
    def valid_move?(move)
    end
  end
end