require_relative 'player.rb'
require_relative 'canvas.rb'

class Logic
  attr_accessor :check_player

  def initialize
    @check_player = [true, true]
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

  def player_both(arg, arr, current_player_check)
    symbol_check = current_player_check.zero? ? 'X' : 'O'
    if arg == arr[0][0]
      arr[0][0] = symbol_check
      @check_player[current_player_check]
    elsif arg == 1 && arr[0][0].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[0][1]
      arr[0][1] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 2 && arr[0][1].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[0][2]
      arr[0][2] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 3 && arr[0][2].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[1][0]
      arr[1][0] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 4 && arr[1][0].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[1][1]
      arr[1][1] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 5 && arr[1][1].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[1][2]
      arr[1][2] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 6 && arr[1][2].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[2][0]
      arr[2][0] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 7 && arr[2][0].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[2][1]
      arr[2][1] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 8 && arr[2][1].class == String
      @check_player[current_player_check] = false
    elsif arg == arr[2][2]
      arr[2][2] = symbol_check
      @check_player[current_player_check] = true
    elsif arg == 9 && arr[2][2].class == String
      @check_player[current_player_check] = false
    end
    @check_player[current_player_check]
  end
end
