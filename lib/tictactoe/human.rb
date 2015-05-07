module TicTacToe
  class Human
    attr_accessor :sign
    def initialize(sign)
      @sign = sign
    end
    
    def prompt(&responder)
      responder ||= lambda { gets }
      print "Enter a valid move for #{@sign}:  "
      responder.call.chomp.to_i
    end
    
    def get_move(board)
      puts board.to_s
      until board.valid_move?(move = prompt)
        print "#{move} is not valid. "
      end
      return move
    end
    def to_s
      @sign
    end
  end
end
