require_relative '../lib/board.rb'

# This is a class for player
class Player
  attr_reader :player, :chip, :prompt, :place

  def initialize(player, chip)
    @player = player
    @chip = chip
    @prompt = prompt
    @place = place
  end

  def prompt_place_chip(prompt, player, place)
    prompt = place
    prompt
  end

end