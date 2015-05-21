require 'tictactoe/player'
module TicTacToe
  class Skynet < Player 
    # Creates a new computer player 
    #
    # @param sign [String] A single character string representing the players
    def initialize(sign)
        super sign
    end
    
    # Display the board and loop the prompt untill the user enters a valid index
    #
    # @param board [Board] the board to get a move for
    # @return [Integer] the index to play at
    def get_move(board)
        ### TODO: Actually do this
        raise NotImplementedError
    end
  end
end
