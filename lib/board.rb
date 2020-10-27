# This is the Board class
class Board
  attr_reader :new_array

  # intializing board elements 
  def initialize
    @new_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
  end

  # looping through passed array and displaying values
  def pupulate_board(display_array)
    count = 0
    result = ' '
    display_array.each do |x|
      result += " #{x} "
      count += 1
      if count == 3
        result += " \n "
        count = 0
      else
        result += ' | '
      end
    end
    result
  end

  # display the board using the passed array
  def display_board(array_my = nil)
    # check if array passed is empty
    display_array = array_my.nil? ? @new_array : array_my
    pupulate_board(display_array)
  end
end
