# frozen_string_literal: true

# rubocop:disable Lint/ShadowedArgument

# This is a class for player
class Player
  attr_reader :player, :chip, :prompt, :place

  def initialize(player, chip)
    @player = player
    @chip = chip
    @prompt = prompt
    @place = place
  end

  def prompt_place_chip(prompt, _player, place)
    prompt = place
    prompt
  end
end

# rubocop:enable Lint/ShadowedArgument
