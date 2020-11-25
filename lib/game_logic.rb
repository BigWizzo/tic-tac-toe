# frozen_string_literal: true

# game logic goes here
class TicTacToe
  # game logic begins here
  attr_accessor :new_array
  attr_reader :win_array
  attr_reader :win_variable

  def initialize
    @win_variable = win_variable
    @new_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @win_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [1, 5, 9]]
  end

  def check(symbol, box)
    @symbol = symbol
    return_array = [true]
    box -= 1
    return false, 'Invalid Choice. Please Select 1 - 9 ' if box.negative? || box > 8

    return false, 'Invalid Move. Already Placed ' if @new_array[box] != '-'

    @new_array[box] = @symbol
    return_array[1] = @new_array
    return_array
  end

  def draw_status(array = @new_array)
    return_value = false
    return_value = true unless array.include? '-'
    return_value
  end

  def wining_logic(array, element, symbol, _result)
    count = 0
    element.each do |y|
      if array[y - 1] == symbol
        count += 1
        _result = true if count == 3
      end
    end
  end

  def win_status(array = @new_array, symbol = @symbol)
    result = false
    @win_array.each do |x|
      wining_logic(array, x, symbol, result)
    end
    result
  end
end
