#!/usr/bin/env ruby
require './lib/player.rb'
require './lib/canvas.rb'

# validate and print player choice
class UserInterface
  def user_info
    
    canvas = Canvas.new
    @arr = canvas.array_canvas

    puts 'Tic Tac Toe Game!'

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
    @player_one.name = @player_one.name.capitalize
    
    print 'Enter name for Player Two: '
    @player_two.name = gets.chomp
    @player_two.name = @player_two.name.capitalize

    @count = 0
    @game_on = true
  end

  def player_wins(name)
    "#{name} has won!, Game Over"
  end

  def validate_player_choice(choice)
    choice.to_i.positive? && choice.to_i < 10 ? true : false
  end

  def player_win_state(player_name)
    @game_on = false
    puts player_wins(player_name)
  end

  def player_win_cases(player_label)
    win_a = (@arr[0][0] == player_label) && (@arr[0][1] == player_label) && (@arr[0][2] == player_label)
    win_b = (@arr[1][0] == player_label) && (@arr[1][1] == player_label) && (@arr[1][2] == player_label)
    win_c = (@arr[2][0] == player_label) && (@arr[2][1] == player_label) && (@arr[2][2] == player_label)
    win_d = (@arr[0][0] == player_label) && (@arr[1][1] == player_label) && (@arr[2][2] == player_label)
    win_e = (@arr[2][0] == player_label) && (@arr[1][1] == player_label) && (@arr[0][2] == player_label)
    win_f = (@arr[0][0] == player_label) && (@arr[1][0] == player_label) && (@arr[2][0] == player_label)
    win_g = (@arr[0][1] == player_label) && (@arr[1][1] == player_label) && (@arr[2][1] == player_label)
    win_h = (@arr[0][2] == player_label) && (@arr[1][2] == player_label) && (@arr[2][2] == player_label)

    win_a || win_b || win_c || win_d || win_e || win_f || win_g || win_h
  end

  def play_second
    state_two = true
    while state_two
      print "#{@player_two.name} its your turn"
      puts
      @player_two.choice = gets.chomp
      if validate_player_choice(@player_two.choice)
        check_two = true
        @arr.each do |i|
          i.length.times do |x|
            if i[x].class == String
              check_two = false     
            end
            if Integer(@player_two.choice) == i[x]
              i[x] = 'O'
              check_two = true
              break
            end
          end
        end

        if check_two == false
          puts 'Number chosen'
        end
        
        check_two == false ? next : true

        @arr.each do |i|
          print i
          puts
        end
        @count += 1
        state_two = false
      elsif !validate_player_choice(@player_two.choice)
        puts 'Enter a valid number'
      end
    end
  end

  def canvas_rules
    user_info
    while @game_on
      print "#{@player_one.name} its your turn"
      puts

      @player_one.choice = gets.chomp
      if validate_player_choice(@player_one.choice)
        check = true
        @arr.each do |i|
          i.length.times do |x|
            if i[x].class == String
              check = false     
            end
            if Integer(@player_one.choice) == i[x]
              i[x] = 'X'
              check = true
              break
            end
          end
        end

        if check == false
          puts 'Number chosen'
        end

        check == false ? next : true

        if player_win_cases('X')
          @arr.each do |i|
            print i
            puts
         end
          player_win_state(@player_one.name)
          return
        end

        @arr.each do |i|
          print i
          puts
        end
        @count += 1
      elsif !validate_player_choice(@player_one.choice)
        puts 'Enter a valid number'
        next
      end

      if @count == 9
        @game_on = false
        break
      end

      play_second
      if player_win_cases('O')
        player_win_state(@player_two.name)
        return
      end
    end
    puts 'Its a draw'
  end
end

ui = UserInterface.new
ui.canvas_rules
