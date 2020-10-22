# This is the Board class
class Board
  attr_reader :board, :winning_points

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winning_points = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 3, 6],
      [2, 5, 8],
      [3, 6, 9],
      [3, 5, 7],
      [1, 5, 8]
    ]
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
