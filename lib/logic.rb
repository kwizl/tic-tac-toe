require_relative 'player.rb'
require_relative 'canvas.rb'

class Logic
  attr_accessor :check_one, :check_two

  def initialize
    @check_one = true
    @check_two = true
  end

  def user_info
    @player_one = Player.new
    @player_two = Player.new
  end

  def validate_player_choice(choice)
    choice.to_i.positive? && choice.to_i < 10 ? true : false
  end

  def player_win_state
    @game_on = false
  end

  def player_win_cases(player_label, arr)
    win_a = (arr[0][0] == player_label) && (arr[0][1] == player_label) && (arr[0][2] == player_label)
    win_b = (arr[1][0] == player_label) && (arr[1][1] == player_label) && (arr[1][2] == player_label)
    win_c = (arr[2][0] == player_label) && (arr[2][1] == player_label) && (arr[2][2] == player_label)
    win_d = (arr[0][0] == player_label) && (arr[1][1] == player_label) && (arr[2][2] == player_label)
    win_e = (arr[2][0] == player_label) && (arr[1][1] == player_label) && (arr[0][2] == player_label)
    win_f = (arr[0][0] == player_label) && (arr[1][0] == player_label) && (arr[2][0] == player_label)
    win_g = (arr[0][1] == player_label) && (arr[1][1] == player_label) && (arr[2][1] == player_label)
    win_h = (arr[0][2] == player_label) && (arr[1][2] == player_label) && (arr[2][2] == player_label)

    win_a || win_b || win_c || win_d || win_e || win_f || win_g || win_h
  end

  def player_first(arg, arr)
    if arg == arr[0][0]
      arr[0][0] = 'X'
      @check_one = true
    elsif arg == 1 && arr[0][0].class == String
      @check_one = false
    elsif arg == arr[0][1]
      arr[0][1] = 'X'
      @check_one = true
    elsif arg == 2 && arr[0][1].class == String
      @check_one = false
    elsif arg == arr[0][2]
      arr[0][2] = 'X'
      @check_one = true
    elsif arg == 3 && arr[0][2].class == String
      @check_one = false
    elsif arg == arr[1][0]
      arr[1][0] = 'X'
      @check_one = true
    elsif arg == 4 && arr[1][0].class == String
      @check_one = false
    elsif arg == arr[1][1]
      arr[1][1] = 'X'
      @check_one = true
    elsif arg == 5 && arr[1][1].class == String
      @check_one = false
    elsif arg == arr[1][2]
      arr[1][2] = 'X'
      @check_one = true
    elsif arg == 6 && arr[1][2].class == String
      @check_one = false
    elsif arg == arr[2][0]
      arr[2][0] = 'X'
      @check_one = true
    elsif arg == 7 && arr[2][0].class == String
      @check_one = false
    elsif arg == arr[2][1]
      arr[2][1] = 'X'
      @check_one = true
    elsif arg == 8 && arr[2][1].class == String
      @check_one = false
    elsif arg == arr[2][2]
      arr[2][2] = 'X'
      @check_one = true
    elsif arg == 9 && arr[2][2].class == String
      @check_one = false
    end
    @check_one
  end

  def player_second(arg, arr)
    if arg == arr[0][0]
      arr[0][0] = 'O'
      @check_two = true
    elsif arg == 1 && arr[0][0].class == String
      @check_two = false
    elsif arg == arr[0][1]
      arr[0][1] = 'O'
      @check_two = true
    elsif arg == 2 && arr[0][1].class == String
      @check_two = false
    elsif arg == arr[0][2]
      arr[0][2] = 'O'
      @check_two = true
    elsif arg == 3 && arr[0][2].class == String
      @check_two = false
    elsif arg == arr[1][0]
      arr[1][0] = 'O'
      @check_two = true
    elsif arg == 4 && arr[1][0].class == String
      @check_two = false
    elsif arg == arr[1][1]
      arr[1][1] = 'O'
      @check_two = true
    elsif arg == 5 && arr[1][1].class == String
      @check_two = false
    elsif arg == arr[1][2]
      arr[1][2] = 'O'
      @check_two = true
    elsif arg == 6 && arr[1][2].class == String
      @check_two = false
    elsif arg == arr[2][0]
      arr[2][0] = 'O'
      @check_two = true
    elsif arg == 7 && arr[2][0].class == String
      @check_two = false
    elsif arg == arr[2][1]
      arr[2][1] = 'O'
      @check_two = true
    elsif arg == 8 && arr[2][1].class == String
      @check_two = false
    elsif arg == arr[2][2]
      arr[2][2] = 'O'
      @check_two = true
    elsif arg == 9 && arr[2][2].class == String
      @check_two = false
    end
    @check_two
  end
end
