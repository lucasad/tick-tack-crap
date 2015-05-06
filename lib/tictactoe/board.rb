module TicTacToe
  class Board
    
    def initialize(board = Array.new(9, " "))
      @board = board
    end
    
    def game_over?
      not @board.include?(" ") or win?
    end
    
    def rows
      @board.each_slice(3).to_a
    end
    def cols
      rows.transpose
    end
    def diags
      [@board.values_at(0,4,8),@board.values_at(2,4,6)]
    end
    def lines
      rows + cols + diags
    end
    
    def win?
      w = lines.find{|line| line[0] != " " and line.uniq.length == 1}
      w ? w[0] : false
    end
    
    def play(move,player)
      @board[move]=player
    end
    
    def to_s
      rows.map{|r|r.join(" | ")}.join("\n- * - * -\n") + "\n"
    end
    
    def valid_move?(move)
      @board[move] == " "
    end
  end
end