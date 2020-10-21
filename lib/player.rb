class Player
    attr_reader :player, :player_move, :win
  
    def initialize
      @player = player
      @player_move = player_move
      @win = win
    end
  
    def player
     @player
    end
  
    def player_move
      @move
     end
  
    def win
      @win
     end
  end
  player_first = Player.new
  player_one = player_first.player
  
  player_second = Player.new
  player_two = player_second.player
  
  move_first = Player.new
  move_one = move_first.player_move
  
  move_second = Player.new
  move_two = move_second.player_move
  
  win_first = Player.new
  win_one = win_first.win
  
  win_second = Player.new
  win_two = win_second.win