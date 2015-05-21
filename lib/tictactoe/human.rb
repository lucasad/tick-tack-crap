require 'tictactoe/player'
module TicTacToe
  class Human < Player
    attr_accessor :sign
    # Creates a new CLI based player with a given symbol
    #
    # @param sign [String] A single character string representing the players
    def initialize(sign)
        super sign
    end
    
    # Prompts the user for a valid move
    #
    # @param responder [Proc] where the prompt should print to.
    # @return [Integer] the index entered by the user
    def prompt(&responder)
      responder ||= lambda { gets }
      print "Enter a valid move for #{@sign}:  "
      responder.call.chomp.to_i
    end
    
    # Display the board and loop the prompt untill the user enters a valid index
    #
    # @param board [Board] the board to get a move for
    # @return [Integer] the index to play at
    def get_move(board)
      puts board.to_s
      until board.valid_move?(move = prompt)
        print "#{move} is not valid. "
      end
      return move
    end
  end
end
