require './lib/player.rb'
require './lib/canvas.rb'

# validate and print player choice
class UserInterface
  def user_info
    puts 'Tic Tac Toe Game!'
    canvas = Canvas.new
    @arr = canvas.array_canvas = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

    puts
    puts 'Game Board'
    @arr.each do |i|
      print i
      puts
    end

    @player_one = Player.new
    @player_two = Player.new

    print 'Enter name for Player One: '
    @player_one.name = gets.chomp
    puts
    print 'Enter name for Player Two: '
    @player_two.name = gets.chomp

    @count = 0
    @game_on = true
  end

  def player_wins(name)
    "#{name} wins"
  end

  def validate_player_choice(choice)
    choice.to_i.positive? && choice.to_i < 10 ? true : false
  end

  def player_win_state(player_name)
    @game_on = false
    puts player_wins(player_name)
  end
end
