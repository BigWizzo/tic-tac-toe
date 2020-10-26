require_relative '../lib/board.rb'

# This is a class for player
class Player
  attr_reader :player, :chip, :prompt

  def initialize(player, chip)
    @player = player
    @chip = chip
    @prompt = prompt
  end

  def prompt_place_chip(prompt, player)
    prompt = "#{player} Place Your Chip on the board."
    prompt
  end

end