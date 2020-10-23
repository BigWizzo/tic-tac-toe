# This is the Board class
class Board
  attr_reader :board, :a, :b, :c, :d, :e, :f, :g, :h

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      @a = [0, 1, 2]
      @b = [3, 4, 5]
      @c = [6, 7, 8]
      @d = [0, 3, 6]
      @e = [1, 4, 7]
      @f = [2, 5, 8]
      @g = [2, 4, 6]
      @h = [0, 4, 8]
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
