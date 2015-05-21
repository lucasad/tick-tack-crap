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
        move = nil #Do this so move is in the outer scope
        begin
            move = rand(0..8)
        end until board.valid_move? move
        return move
    end
  end
end
