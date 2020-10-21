class Board
    attr_reader :board, :winning_points
  
    def initialize
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      @winning_points = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [6, 4, 2],
        [0, 4, 8]
      ]
    end
  
    def board
      @board
    end
  
    def winning_points
      @winning_points
    end
    
    def display_bd
      display_bd = "
      | #{@board[0]} | #{@board[1]} | #{@board[2]} |
      -------------
      | #{@board[3]} | #{@board[4]} | #{@board[5]} |
      -------------
      | #{@board[6]} | #{@board[7]} | #{@board[8]} |
      "
      display_bd
  
    end 
  end
  