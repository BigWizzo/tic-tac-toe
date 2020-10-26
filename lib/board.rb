# This is the Board class
class Board
  attr_reader :board, :winning_points, :x_count, :o_count, :the_move, :arr

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winning_points =
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
    @x_count = []
    @o_count = []
    @the_move = the_move
    @arr = arr
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

  def board_pos(the_move)
    @board[the_move - 1]
  end

  def arr_push(arr, the_move)
    arr.push(the_move - 1)
  end
end