module TicTacToe
  class Game
    def initialize(p1,p2)
      @players = [p1,p2]
      @board = Board.new
    end
    
    def run
      until game_over?
        display
        @board.play get_valid_move
        increment_turn
      end
    end
    
    def game_over?
      @board.game_over?
    end
    
    def display
      print @board.to_s
    end
    
    def valid?(move)
      @board.valid_move?(move)
    end
    
    def get_valid_move
      move = get_move until valid?(move)
      return move
    end
    
    def get_move
      @players[0].get_move(@board)
    end
    
    def increment_turn
      @players.rotate!
    end
  end
end