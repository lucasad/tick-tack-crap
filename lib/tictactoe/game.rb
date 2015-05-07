module TicTacToe
  class Game
    def initialize(p1,p2)
      @players = [p1,p2]
      @board = Board.new
    end
    
    def run
      until game_over?
        # Get the next move from the player and update the game state.
        @board.play(get_valid_move,@players[0].sign)
        increment_turn
      end
    end
    
    def game_over?
      @board.game_over?
    end
    
    def valid?(move)
      @board.valid_move?(move)
    end
    
    def get_valid_move
      move = get_move
      unless valid? move
        raise "Player: #{@players[0]} attempted the invalid move: #{move}"
      end
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