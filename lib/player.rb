require_relative '../lib/board.rb'

# This is a class for player
class Player
  attr_reader :player, :chip, :prompt, :the_move, :win

  def initialize(player, chip)
    @player = player
    @chip = chip
    @prompt = prompt
    @the_move = the_move
    @win = win
  end

  def prompt_place_chip(prompt, player)
    prompt = "#{player} Place Your Chip on the board."
    prompt
  end

  # def board_pos(the_move)
    # board_pos = board[the_move - 1]
    # board_pos
  # end

end