# rubocop:disable Layout/LineLength, Metrics/ParameterLists

# This is the Board class
class Board
  attr_reader :board, :winning_points, :x_count, :o_count, :the_move, :arr, :re_prompt, :picked_spot, :invalid, :re_chip, :win

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
    @re_prompt = re_prompt
    @picked_spot = picked_spot
    @invalid = invalid
    @re_chip = re_chip
    @win = win
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

  def get_input(the_move, arr, re_chip, re_prompt, picked_spot, invalid)
    while (the_move = gets.chomp.to_i)
      range = (1..9).include? the_move
      if range
        if board[the_move - 1].is_a?(Integer)
          board[the_move - 1] = re_chip
          arr.push(the_move - 1)
          puts display_bd
          break
        else
          puts picked_spot
          re_prompt
        end
      else
        puts invalid
        re_prompt
      end
    end
  end

  def check_win(win, arr)
    k = 0
    while k < winning_points.length
      if (arr & winning_points[k]).length == 3
        win = true
        break
      end
      k += 1
    end
    win
  end
end

# rubocop:enable Layout/LineLength, Metrics/ParameterLists
