module TicTacToe
  class Player 
    attr_accessor :sign
    # Creates a new  player with a given symbol
    #
    # @param sign [String] A single character string representing the players
    def initialize(sign)
      @sign = sign
    end
    
    # Get a valid move from the player 
    #
    # @param board [Board] the board to get a move for
    # @return [Integer] the index to play at
    def get_move(board)
        raise NotImplementedError
    end
    # Gets the string representing the player's sign.
    #
    # @return [String] the player's sign
    def to_s
      @sign
    end
  end
end
