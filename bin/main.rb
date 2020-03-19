#!/usr/bin/env ruby
require './lib/canvas.rb'
require './lib/player.rb'
require './lib/logic.rb'

canvas = Canvas.new
logic = Logic.new

player_one = Player.new
player_two = Player.new

current_player = player_one
current_player_number = 0

arr = canvas.array_canvas

count = 0

game_on = true

player_name = 'Player One'

puts 'Tic Tac Toe Game!'

puts
puts 'Game Board'
arr.each do |i|
  print i
  puts
end

while game_on
  print "#{player_name} its your turn"
  puts

  current_player.choice = gets.chomp
  if logic.validate_player_choice(current_player.choice)
    logic.player_both(Integer(current_player.choice), arr, current_player_number)
    puts 'Number chosen' if logic.check_player[current_player_number] == false
    logic.check_player[current_player_number] == false ? next : true

    win_cases_symbol = current_player == player_one ? 'X' : 'O'
    if logic.player_win_cases(win_cases_symbol, arr)
      arr.each do |i|
        print i
        puts
      end
      logic.player_win_state
      puts "#{player_name} Has Won! Game Over!"
      return
    end
    count += 1
  elsif !logic.validate_player_choice(current_player.choice)
    puts 'Enter a valid number'
    next
  end

  if count == 9
    game_on = false
    break
  end
  arr.each do |i|
    print i
    puts
  end
  current_player_number = current_player == player_one ? 1 : 0
  current_player = current_player == player_one ? player_two : player_one
  player_name = current_player == player_one ? 'Player One' : 'Player Two'
end
puts 'Its a draw!'
